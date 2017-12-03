package com.etc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.dao.UserManageDao;
import com.etc.entity.AdminInfo;
@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    private UserManageDao umd = new UserManageDao();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.service(req, resp);
		System.out.println("in registerServlet");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String mobile = req.getParameter("mobile");
		AdminInfo ai = new AdminInfo();
		ai.setUsername(username);
		ai.setPassword(password);
		ai.setEmail(email);
		ai.setTel(Long.valueOf(mobile));
		try {
			AdminInfo queryAUser = umd.queryAUser(username);
			System.out.println(queryAUser);
			if(queryAUser!=null)
			{
				req.setAttribute("nameRepeat", "用户名已被注册");
				req.getRequestDispatcher("/login/register.jsp").forward(req, resp);
			}
			else
			{
				req.setAttribute("nameRepeat", "");
				boolean registerUser = umd.registerUser(ai);
				if(registerUser)
				{
					System.out.println("注册成功");
				}
				resp.sendRedirect("/javaweb_project2/login/login.jsp");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
  
}
