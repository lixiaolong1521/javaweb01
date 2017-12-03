package com.etc.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.dao.ProductDetailDao;
@WebServlet("/productdetail")
public class ProductDetail extends HttpServlet {

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
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		String proId = req.getParameter("productId");
		try {
			com.etc.entity.ProductDetail pd =pdd.queryProductById(Long.valueOf(proId));
			System.out.println(pdd.queryProductById(Long.valueOf(proId)));
			req.getSession().setAttribute("productDetail",pd);
			//System.out.println(pd.getType()+"typexxx");
			List<String> allColorsByType = pdd.queryAllColorsByType(pd.getType());
			List<String> allStorageByType = pdd.queryAllStorageByType(pd.getType());
			List<String> allVersionsByType = pdd.queryAllVersionsByType(pd.getType());
			req.getSession().setAttribute("colors", allColorsByType);
			req.getSession().setAttribute("storages", allStorageByType);
			req.getSession().setAttribute("versions", allVersionsByType);
			//System.out.println(allColorsByType.toString()+allStorageByType.toString()+allVersionsByType.toString());
			
			req.getRequestDispatcher("product/MyJsp.jsp").forward(req, resp);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
	}

}
