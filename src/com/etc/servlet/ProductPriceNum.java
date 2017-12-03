package com.etc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.etc.dao.ProductDetailDao;

@WebServlet("/pricenum")
public class ProductPriceNum extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    private ProductDetailDao pdd = new ProductDetailDao();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.service(req, resp);
		resp.setContentType("application/json;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
     /*   List<People> allPeople = People.getAllPeople();
        String jsonString = JSON.toJSONString(allPeople);
        PrintWriter out = resp.getWriter();
        out.print(jsonString);
        req.getSession().setAttribute("peoples", allPeople);*/
		String color = req.getParameter("color");
		String storage = req.getParameter("storage");
		String version = req.getParameter("version");
		System.out.println("xxx"+color+storage+version);
		try {
			List<String> priceAndNum = pdd.queryPriceAndNum(color, storage, version);
			System.out.println("priceAndNum.size="+priceAndNum.size());
			if(priceAndNum.size()==0)
			{
				priceAndNum.add("0");
				priceAndNum.add("0");
				priceAndNum.add("0");
			}
			String jsonString = JSON.toJSONString(priceAndNum);
			PrintWriter out = resp.getWriter();
			out.print(jsonString);
			
			System.out.println("xxxxxxxxxxxxxxx"+priceAndNum.toString());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	

}
