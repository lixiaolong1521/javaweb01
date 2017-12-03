package com.etc.dao;

import java.util.ArrayList;
import java.util.List;

import com.etc.entity.Admin;
import com.etc.utils.BaseDao;
import com.etc.utils.JDBCUtils;

public class AdminDao {

	   //private BaseDao bd = new BaseDao();
	     private JDBCUtils utils = new JDBCUtils();

	public AdminDao() {
         // bd.getConn();
		 utils.getConnection();
	}
   public List<Admin> queryAllAdmin() throws Exception{
	   String sql = "SELECT * FROM t_admin";
	   //List<Admin> list = (List<Admin>)bd.select(sql, Admin.class, null);
	   List<Admin> list = utils.findMoreRefResult(sql, null, Admin.class);
	return list;
   }
   public Admin querySimpleAdmin(String name,String password) throws Exception{
	   String sql = "SELECT * FROM t_admin WHERE ADMINNAME = ? AND PASSWORD=?";
	  // ArrayList<Object> param = new ArrayList<Object>();
	  // param.add(name);
	   //param.add(password);
	//  List<Admin> admin = (List<Admin>) bd.select(sql, Admin.class, param.toArray());
	   List<Object> params = new ArrayList<Object>();
	   params.add(name);
	   params.add(password);
	   Admin admin = utils.findSimpleRefResult(sql, params, Admin.class);
	   return admin;
   }
	   
}
