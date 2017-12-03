package com.etc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.entity.Admin;
import com.etc.entity.AdminInfo;
import com.etc.entity.Product;
import com.etc.entity.test;
import com.etc.utils.JDBCUtils;



public class UserManageDao {
	private JDBCUtils util = new JDBCUtils();

	public UserManageDao() {
		Connection conn = util.getConnection();
	}
	
//	查找 通过一个用户名  查找 一个用户详情
	public AdminInfo queryAUser(String name) throws Exception{
		String sql = "SELECT * FROM d_userinfo where username='"+name+"'";
/*		List<Object> params = new ArrayList<Object>();
		params.add(name);*/
		AdminInfo admin = util.findSimpleRefResult(sql,null,AdminInfo.class);
		util.releaseConn();
		return admin;
	}
	
//	查找   查找所有用户
	public List<AdminInfo> queryAllUser() throws Exception{
		String sql = "SELECT * FROM d_userinfo";
		List<AdminInfo> admin = util.findMoreRefResult(sql, null, AdminInfo.class);
		util.releaseConn();
		return admin;
	}
	
//	更新 通过一个用户对象  修改一个用户密码
	public boolean updateUserpw(AdminInfo admin) throws Exception{
		String sql = "update d_userinfo set password=? WHERE username=?";
		List<Object> params = new ArrayList<Object>();
		params.add(admin.getPassword());
		params.add(admin.getUsername());
		boolean b = util.updateByPreparedStatement(sql, params);
		util.releaseConn();
		return b;
	}

//	更新 通过一个用户对象  修改一个用户详情
	public boolean updateUserInfo(AdminInfo admin) throws Exception{
		String sql = "update d_userinfo set sex=?,nickname=?,tel=?,email=?,address=? WHERE username=?";
		List<Object> params = new ArrayList<Object>();
		params.add(admin.getSex());
		params.add(admin.getNickname());
		params.add(admin.getTel());
		params.add(admin.getEmail());
		params.add(admin.getAddress());
		params.add(admin.getUsername());
		boolean b = util.updateByPreparedStatement(sql, params);
		util.releaseConn();
		return b;
	}
	
//	查找   查找所有产品
	public List<Product> queryAllProduct() throws Exception{
		String sql = "SELECT * FROM d_product";
		List<Product> admin = util.findMoreRefResult(sql, null, Product.class);
		util.releaseConn();
		return admin;
	}
	
//	登录
	public AdminInfo checkLogin(String username,String password) throws Exception{
		String sql = "SELECT * FROM d_userinfo WHERE username = ? AND password = ?";
		List<Object> params = new ArrayList<Object>();
		params.add(username);
		params.add(password);
		AdminInfo user = util.findSimpleRefResult(sql, params, AdminInfo.class);
		util.releaseConn();
		return user;
	}
	public boolean registerUser(AdminInfo ai) throws SQLException{
		String sql = "insert into d_userinfo values(null,?,?,null,?,?,null,null)";
		List<Object> params = new ArrayList<Object>();
		params.add(ai.getUsername());
		params.add(ai.getPassword());
		params.add(ai.getEmail());
		params.add(ai.getTel());
		boolean statement = util.updateByPreparedStatement(sql, params);
		return statement;
		
	}
	
//	
	
}
