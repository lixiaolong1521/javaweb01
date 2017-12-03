package com.etc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.etc.dao.AdminDao;
import com.etc.entity.Admin;
@WebServlet("/backstagelogin")
public class BackstageLogin extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    private AdminDao ad = new AdminDao();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.service(req, resp);
		//List<Admin> adminList = ad.queryAllAdmin();
		resp.setContentType("application/json;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		String adminname = req.getParameter("adminname");
		String password = req.getParameter("password");
		try {
			Admin admin = ad.querySimpleAdmin(adminname, password);
			System.out.println(admin);
		/*	List<String> priceAndNum = pdd.queryPriceAndNum(color, storage, version);
			String jsonString = JSON.toJSONString(priceAndNum);
			PrintWriter out = resp.getWriter();
			out.print(jsonString);*/
			if(admin!=null)
			{
				String jsonString = JSON.toJSONString(admin.getADMINNAME());
				PrintWriter out = resp.getWriter();
				out.print(jsonString);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
