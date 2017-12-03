package com.etc.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.etc.entity.ProductDetail;
@WebServlet("/orderservlet")
public class OrderServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.service(req, resp);
		String string = req.getParameter("proNum");
		List<ProductDetail> list =(List<ProductDetail>)req.getSession().getAttribute("SESSION_CART_PRO");
		System.out.println(list);
		Double sum = new Double(0);
		Double num = new Double(Double.valueOf(string));
		
		for (ProductDetail productDetail : list) {
		    Double price = productDetail.getPrice();
		    sum +=num*price;
		}
		req.getSession().setAttribute("priceAll", sum);
		if(req.getAttribute("orderIndex")==null)
		{long millis = System.currentTimeMillis();
		req.getSession().setAttribute("orderIndex", sum);}
		else{
			
		}
		
		System.out.println(string);
		System.out.println("orderservlet");
		req.getRequestDispatcher("/orderPage/jsp/Page_order.jsp").forward(req, resp);
	}
	
	

}
