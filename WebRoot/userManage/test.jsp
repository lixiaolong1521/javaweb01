<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'test.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<H1>
		<font color="blue" size="12">管理中心</font>
	</H1>
	<HR />
	<table width="80%" border="1">
		<tr>
			<th>ID</th>
			<th>书名</th>
			<th>作者</th>
			<th>价格</th>
			<th>删除</th>
		</tr>
		<%
			// 数据库的名字
			String dbName = "demo";
			// 登录数据库的用户名
			String username = "root";
			// 登录数据库的密码
			String password = "12345";
			// 数据库的IP地址，本机可以用 localhost 或者 127.0.0.1
			String host = "127.0.0.1";
			// 数据库的端口，一般不会修改，默认为1433
			int port = 3306;
			String connectionUrl = "jdbc:sqlserver://" + host + ":" + port
					+ ";databaseName=" + dbName + ";user=" + username
					+ ";password=" + password;
			//
			//声明需要使用的资源 
			// 数据库连接，记得用完了一定要关闭
			Connection con = null;
			// Statement 记得用完了一定要关闭
			Statement stmt = null;
			// 结果集，记得用完了一定要关闭
			ResultSet rs = null;
			try {
				// 注册驱动 
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				// 获得一个数据库连接
				con = DriverManager.getConnection(connectionUrl);
				String SQL = "SELECT * from t_test";
				// 创建查询
				stmt = con.createStatement();
				// 执行查询，拿到结果集
				rs = stmt.executeQuery(SQL);
				while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt(1)%></td>
			<td><a href="prepareupdate?num=<%=rs.getInt("num")%>"
				target="_blank"><%=rs.getString(2)%></a></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><a href="delete?num=<%=rs.getInt("num")%>" target="_blank">删除</a>
			</td>
		</tr>
		<%
			}
			} catch (Exception e) {
				// 捕获并显示异常
				e.printStackTrace();
			} finally {
				// 关闭我们使用过的资源
				if (rs != null)
					try {
						rs.close();
					} catch (Exception e) {
					}
				if (stmt != null)
					try {
						stmt.close();
					} catch (Exception e) {
					}
				if (con != null)
					try {
						con.close();
					} catch (Exception e) {
					}
			}
		%>
	</table>
	<a href="test.jsp">添加新纪录</a>
</body>
</html>
