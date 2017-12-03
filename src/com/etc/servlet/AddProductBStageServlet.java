package com.etc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.etc.dao.ProductDetailDao;
import com.etc.entity.ProductDetail;
@WebServlet("/addproduct")
public class AddProductBStageServlet extends HttpServlet {

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
		   resp.setCharacterEncoding("UTF-8");
		   req.setCharacterEncoding("UTF-8");
         String brand = req.getParameter("addBrand");
         String model =  req.getParameter("addModel");
         String price = req.getParameter("addPrice");
         String color = req.getParameter("addColor");
         String storage = req.getParameter("addStorage");
         String inbentory = req.getParameter("addInventory");
         String version = req.getParameter("addVersion");
         String type = req.getParameter("addType");
          ProductDetail pd = new ProductDetail();
          pd.setBrand(brand);
          pd.setModel(model);
          pd.setPrice(Double.valueOf(price));
          pd.setColor(color);
          pd.setStorageCapacity(Integer.valueOf(storage));
          pd.setInventoryNumber(Integer.valueOf(inbentory));
          pd.setVersion(version);
          pd.setType(type);
          System.out.println(pd);
          
			boolean isOKAddPro = false;
			try {
				isOKAddPro = pdd.addProduct(pd);
				String jsonString = null;
				PrintWriter out = resp.getWriter();
				if(isOKAddPro){
					jsonString=JSON.toJSONString("添加商品成功");
					out.print(jsonString);
				}
				else
				{
					jsonString=JSON.toJSONString("添加商品失败");
					out.print(jsonString);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("addPro isOK "+isOKAddPro);
		
		  
	}
  
}
