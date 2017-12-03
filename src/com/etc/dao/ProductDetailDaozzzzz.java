package com.etc.dao;

import java.util.List;

import com.etc.entity.ProductDetail;
import com.etc.utils.BaseDao;

public class ProductDetailDaozzzzz  {
	 private BaseDao bd = new BaseDao();

	public ProductDetailDaozzzzz() {
		bd.getConn();
	}
	public List<ProductDetail> queryAllProduct(){
		String sql = "SELECT * FROM T_PRODUCTDETAIL";
		List<ProductDetail> list = (List<ProductDetail>)bd.select(sql, ProductDetail.class, null);
		return list;
	}
	 

}
