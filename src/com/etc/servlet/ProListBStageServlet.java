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
import com.etc.dao.ProductDetailDao;
import com.etc.entity.ProductDetail;
import com.etc.page.PageResult;
import com.etc.utils.StringUtils;
@WebServlet("/prolistbs")
public class ProListBStageServlet extends HttpServlet {

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
		System.out.println("prolistbstageservlet.java");
		 resp.setContentType("application/json;charset=UTF-8");
		   resp.setCharacterEncoding("UTF-8");
		   req.setCharacterEncoding("UTF-8");
	         List<ProductDetail> allProducts;
			try {
				String pageSize = req.getParameter("pageSize");
				//System.out.println("dddddd"+pageSize);
				String currentPage = req.getParameter("currentPage");
					Integer icurrentPage = 1;
					if(StringUtils.hasLength(currentPage)){
						icurrentPage = Integer.valueOf(currentPage);
					}
					Integer ipageSize = 3;
					if(StringUtils.hasLength(pageSize)){
						ipageSize = Integer.valueOf(pageSize);
					}
					//把商品分类的数据放在作用域中共享数据
					//把op对象放到作用域  共享数据
					// 把数据放到作用域 共享数据
					//req.setAttribute("list", products);
					PageResult result = pdd.queryPageResult(icurrentPage,ipageSize);
					req.getSession().setAttribute("pageResult", result);
			     System.out.println(result);
			     System.out.println(result.getIndex().getBeginIndex());
			     System.out.println(result.getIndex().getEndIndex());
				//
				allProducts = pdd.queryAllProduct();
			String jsonString = JSON.toJSONString(result.getListData());
			PrintWriter out = resp.getWriter();
			out.print(jsonString);
			
			//req.getSession().setAttribute("allOrders", allOrders);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			req.getRequestDispatcher("/backstage.jsp").forward(req, resp);
			
	}

}
