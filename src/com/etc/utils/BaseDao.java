package com.etc.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

/**
 * 数据库操作辅助类
 */
public class BaseDao {

	// 四个常量 driver url username password
	private static final String URL = "jdbc:oracle:thin:@192.168.11.224:1521:orcl";
	private static final String USER = "scott";
	private static final String PASSWORD = "tiger";
	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";

	/**
	 * 获取连接对象
	 * 
	 * @return 连接对象
	 */
	public static Connection getConn() {

		Connection conn = null;
		try {

			Class.forName(DRIVER);
			
			conn = DriverManager.getConnection(URL, USER, PASSWORD);

		} catch (Exception e) {
			throw new RuntimeException("数据库连接失败!", e);
		}
		return conn;
	}

	/**
	 * 释放资源
	 * 
	 * @param rs
	 *            结果集
	 * @param pstmt
	 *            命令处理对象
	 * @param conn
	 *            连接对象
	 */
	public static void close(ResultSet rs, PreparedStatement pstmt,
			Connection conn) {
		try {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			throw new RuntimeException("释放资源失败!", e);
		}
	}

	/**
	 * 设置参数
	 * 
	 * @param sql
	 * @param conn
	 * @param pstmt
	 * @param param
	 * @return
	 * @throws SQLException
	 */
	private static PreparedStatement setPstmt(String sql, Connection conn,
			PreparedStatement pstmt, Object... param) throws SQLException {
		pstmt = conn.prepareStatement(sql);
		if (param != null) {
			for (int i = 0; i < param.length; i++) {
				pstmt.setObject(i + 1, param[i]);
			}
		}
		return pstmt;
	}

	/**
	 * 通用的数据库（增，删，改）操作方法ͨ
	 * 
	 * @param sql
	 *            sql语句
	 * @param param
	 *            sql参数
	 * @return 受影响行数
	 */
	public static int execute(String sql, Object... param) {
		Connection conn = getConn();
		try {
			return execute(sql, conn, param);
		} finally {
			close(null, null, conn);
		}
	}

	/**
	 *通用的数据库增删改（事务访问）
	 * 
	 * @param sql
	 * @param conn
	 * @param param
	 * @return
	 */
	public static int execute(String sql, Connection conn, Object... param) {
		PreparedStatement pstmt = null;
		try {
			pstmt = setPstmt(sql, conn, pstmt, param);
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			throw new RuntimeException("数据库操作失败!", e);
		} finally {
			close(null, pstmt, null);
		}
	}

	/**
	 *通用的查询方法
	 * 
	 * @param sql
	 *           sql语句
	 * @param cla
	 *            类对象（Class类对象）如 Student.class
	 * @param param
	 *            可变参数
	 * @return
	 */
	public static Object select(String sql, Class cla, Object... param) {
		Connection conn = getConn();
		try {
			return select(sql, conn, cla, param);
		} finally {
			close(null, null, conn);
		}
	}

	/**
	 * 带事务的查询方法
	 * 
	 * @param sql
	 * @param conn
	 * @param cla
	 * @param param
	 * @return
	 */
	public static Object select(String sql, Connection conn, Class cla,
			Object... param) {
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		List<Object> list = new ArrayList<Object>();
		try {
			pstmt = setPstmt(sql, conn, pstmt, param);
			// executeQuery 
			rs = pstmt.executeQuery();
			while (rs.next()) {
				// ?rs 结果集   cla Class对象
				Object object = convert(rs, cla);
				list.add(object);
			}
			return list;
		} catch (SQLException e) {
			throw new RuntimeException("数据库查询失败!", e);
		} finally {
			close(rs, pstmt, null);
		}
	}

	/**
	 * 获取单个记录值，是单个记录注意
	 * 
	 * @param sql
	 * @param param
	 * @return
	 */
	public static Object getFirst(String sql, Object... param) {
		Connection conn = getConn();
		try {
			return getFirst(sql, conn, param);
		} finally {
			close(null, null, conn);
		}
	}

	/**
	 * 获取单个记录值 事务
	 * 
	 * @param sql
	 * @param conn
	 * @param param
	 * @return
	 */
	public static Object getFirst(String sql, Connection conn, Object... param) {
		List list = (List) select(sql, conn, Object.class, param);
		if (list.isEmpty()) {
			return null;
		}
		return list.get(0);
	}

	/**
	 * 事务处理操作
	 * 
	 * @param tran
	 * @return
	 */
	public static Object transaction(ITransaction tran) {
		Connection conn = getConn();
		try {
			conn.setAutoCommit(false);
			Object obj = tran.execute(conn);
			conn.commit();
			return obj;
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				throw new RuntimeException("回滚失败!", e);
			}
			throw new RuntimeException("事务执行失败", e);
		} finally {
			close(null, null, conn);
		}
	}

	/**
	 * 查询结果的转换
	 * 
	 * @param rs
	 *            结果集resultSet
	 * @param cla
	 *            某个类对象
	 * @return
	 */
	public static Object convert(ResultSet rs, Class cla) {
		try {
			if (cla.getName().equals("java.lang.Object")) {
				return rs.getObject(1);
			}
			Object object = cla.newInstance(); // 创建实体类的实例
			ResultSetMetaData metaData = rs.getMetaData();// 
			for (int i = 1; i <= metaData.getColumnCount(); i++) {// ֵ
				String name = metaData.getColumnLabel(i);// 
				BeanUtils.setProperty(object, name, rs.getObject(i));// 列名和属性名必须是一致的
			}
			return object;
		} catch (Exception e) {
			throw new RuntimeException("属性设置失败!", e);
		}
	}

	/**
	 * 分页操作;
	 * 
	 * @param Mysql
	 *            查询sql语句
	 * @param page
	 *            当前页码
	 * @param pageSize
	 *            每页显示的记录数
	 * @param cla
	 *            要查询的类对象
	 * @param param
	 *           参数列表
	 * @return PageData对象
	 */
	public static PageData getPage(String sql, Integer page, Integer pageSize,
			Class cla, Object... param) {

		// 假设传递过来的sql语句
		// select * from tbl_emp
		// 查询表中的记录数
		String selSql = "select count(*) from (" + sql + ") t";
		if (page == null) {
			page = 1;
		}
		if (pageSize == null) {
			pageSize = 5;
		}
		Integer count = Integer.parseInt(getFirst(selSql, param).toString());
		// 得到起始位置简单算法
		int start = (page - 1) * pageSize;
		// selSql 重新复制的结果是 分页查询的语句
		selSql = sql + " limit " + start + "," + pageSize;
		// 调用select方法查询
		List list = (List) select(selSql, cla, param);
		// ?
		PageData data = new PageData(list, count, pageSize, page);
		return data;
	}



}
