package com.etc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.dao.UserManageDao;
import com.etc.entity.Admin;
import com.etc.entity.AdminInfo;
import com.etc.entity.Product;
import com.etc.utils.StringUtils;

@WebServlet("/changeInfo")
public class changeInfoServlet extends HttpServlet {
	
	private UserManageDao dao = new UserManageDao();
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String cmd = req.getParameter("cmd");
		
		try {
			List<Product> prolist = dao.queryAllProduct();
			System.out.println(prolist);
			req.setAttribute("prolist", prolist);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	
		if(StringUtils.hasLength(cmd)){
			if (cmd.equals("changepassword")) {
				changepassword(req, resp);
			} else if (cmd.equals("changeinfo")) {
				changeinfo(req, resp);
			} else if (cmd.equals("saveOrUpdate")) {
				// saveOrUpdate(req, resp);
			} else {
				login(req, resp);
			}
		}else{
			login(req, resp);
		}
		
	}

	protected void changepassword(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=utf-8");
/*//用户测试
		AdminInfo user;
		try {
			user = dao.queryAUser("小卡");
			req.getSession().setAttribute("USER_IN_SESSION", user);
			System.out.println(user);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}*/
		String name = req.getParameter("name");
/*		name=new String(name.getBytes("8859_1"), "utf-8");*/
		String oldpassword = req.getParameter("oldpassword");
		String newpassword = req.getParameter("newpassword");
/*		PrintWriter out = resp.getWriter();*/
		try {
			AdminInfo aUser = dao.queryAUser(name);
			System.out.println(aUser);
			boolean equals = aUser.getPassword().equals(oldpassword);
			if(equals){
				aUser.setPassword(newpassword);
				System.out.println(aUser.getPassword());
				boolean updateAUser = dao.updateUserpw(aUser);
				if(updateAUser){
					System.out.println("成功");
				}else{
					System.out.println("失败");
				}
			}else{
				System.out.println("密码错误");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("用户不存在");
		}
		resp.sendRedirect("/javaweb_project2/userManage/index.jsp");
	/*	req.getRequestDispatcher("/userManage/index.jsp").forward(req, resp);*/
	}

	
	protected void login(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//登录校验
				Object object = req.getSession().getAttribute("USER_IN_SESSION");
				if(object==null){
					resp.sendRedirect("/javaweb_project2/userManage/login.jsp");
					return;
				}
				req.getRequestDispatcher("/userManage/shoppingcart/productList.jsp").forward(req, resp);
	}
	
	
	protected void changeinfo(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String email = req.getParameter("email");
		String nickname = req.getParameter("nickname");
		String tel = req.getParameter("tel");
		String sex = req.getParameter("sex");
	
		List<String> names = Arrays.asList(new String[]{"jack","lily","rose"});
		//判断用户名是否存在
		PrintWriter out = resp.getWriter();
		if(StringUtils.hasLength(nickname)){
			if(names.contains(nickname)){
				//System.out.println("亲，用户名已经存在");
				out.print("亲，用户名已经存在");
			}else{
				//System.out.println("恭喜你，用户名可以使用");
				out.print("恭喜你，用户名可以使用");
			}
		}else{
			out.print("亲，用户名不能为空");
		}
		AdminInfo admin = (AdminInfo)req.getSession().getAttribute("USER_IN_SESSION");
		admin.setEmail(email);
		admin.setNickname(nickname);
		admin.setSex(sex);
		admin.setTel(Long.valueOf(tel));
//		System.out.println(email+nickname+tel+sex+"----"+admin.getAddress());
		try {
			boolean updateUserInfo = dao.updateUserInfo(admin);
			if(updateUserInfo){
				System.out.println("成功");
			}else{
				System.out.println("失败");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		resp.sendRedirect("/javaweb_project2/userManage/index.jsp");
	}
}
