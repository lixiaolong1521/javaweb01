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
import com.etc.dao.OrderItemsDao;
import com.etc.entity.OrderItems;
@WebServlet("/AllOrder")
public class OrderBStageServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
     //private OrderDao od = new OrderDao();
	   private OrderItemsDao oid = new OrderItemsDao();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.service(req, resp);
		   resp.setContentType("application/json;charset=UTF-8");
		   resp.setCharacterEncoding("UTF-8");
		   req.setCharacterEncoding("UTF-8");
	         List<OrderItems> allOrders;
			try {
			allOrders = oid.queryAllOrderItems();
			String jsonString = JSON.toJSONString(allOrders);
			PrintWriter out = resp.getWriter();
			out.print(jsonString);
			System.out.println(allOrders);
			//req.getSession().setAttribute("allOrders", allOrders);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	       
	}
    
}
