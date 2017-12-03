package com.etc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.dao.UserManageDao;
import com.etc.entity.AdminInfo;
import com.etc.utils.StringUtils;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserManageDao dao = new UserManageDao();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		
		System.out.println("xxxx"+req.getSession().getAttribute("USER_IN_SESSION"));
		//验证码校验
		//获取用户填写的验证码
		String randomCode = req.getParameter("randomCode");
		
		//Session的验证码
		String sessionRandomCode = (String)req.getSession().getAttribute("RANDOMCODE_IN_SESSION");
		
		if(!StringUtils.hasLength(randomCode) || !StringUtils.hasLength(sessionRandomCode)){
			req.setAttribute("errorMsg", "亲，验证码不能为空或验证码过时");
			System.out.println("亲，验证码不能为空或验证码过时");
			req.getRequestDispatcher("/login/login.jsp").forward(req, resp);
			return;
		}
		if(!randomCode.equals(sessionRandomCode)){
			req.setAttribute("errorMsg", "亲，验证码错误，请重新输入");
			System.out.println("亲，验证码错误，请重新输入");
			req.getRequestDispatcher("/login/login.jsp").forward(req, resp);
			return;
		}
		
		
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		System.out.println(username);
		System.out.println(password);
		try {
			AdminInfo user = dao.checkLogin(username, password);
			System.out.println(user);
			if(user==null){
				req.setAttribute("errorMsg", "亲，用户名或密码错误");
				System.out.println("亲，用户名或密码错误");
				req.getRequestDispatcher("/login/login.jsp").forward(req, resp);
				return;
			}
			req.getSession().setAttribute("USER_IN_SESSION", user);
			System.out.println(req.getSession().getAttribute("xxxxxxxx"+"USER_IN_SESSION"));
			System.out.println("login success");
			resp.sendRedirect("/javaweb_project2/Ninestars/index.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
	}

}
