package com.etc.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.dao.ProductDetailDao;
import com.etc.entity.ProductDetail;
@WebServlet("/shoppingcart")
public class ShoppingCart extends HttpServlet {

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
		String string = req.getParameter("proId");
		System.out.println(string);
		try {
			ProductDetail productById = pdd.queryProductById(Long.valueOf(string));
			List<ProductDetail> list = new ArrayList<ProductDetail>();
			list.add(productById);
			System.out.println(productById);
			req.getSession().setAttribute("SESSION_CART_PRO", list);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.getRequestDispatcher("/cart/cart.jsp").forward(req, resp);
	}
  
}
