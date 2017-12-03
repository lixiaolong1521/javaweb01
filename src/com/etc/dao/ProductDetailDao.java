package com.etc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.entity.ProductDetail;
import com.etc.utils.JDBCUtils;
import com.etc.page.PageResult;

public class ProductDetailDao {
   private JDBCUtils utils = new JDBCUtils();

public ProductDetailDao() {
	utils.getConnection();
}
public List<ProductDetail> queryAllProduct() throws Exception{
	String sql = "SELECT * FROM t_product_detail";
	List<ProductDetail> list = utils.findMoreRefResult(sql, null, ProductDetail.class);
	return list;	
}
public PageResult queryPageResult(Integer currentPage,Integer pageSize) throws Exception{
	//查询 结果集
	String sql = "SELECT * FROM t_product_detail  LIMIT ?,?";
	List<Object> params  = new ArrayList<Object>();
	params.add((currentPage-1)*pageSize);
	params.add(pageSize);

	List<ProductDetail> list = utils.findMoreRefResult(sql, params, ProductDetail.class);
	
	//查询总条数
	Integer totalCount = queryAllProduct().size();
	
	PageResult pr = new PageResult(list,totalCount,currentPage,pageSize);
	return pr;
}
public ProductDetail queryProductById(Long id) throws Exception{
	String sql = "SELECT * FROM t_product_detail WHERE productId = ?";
	List<Object> params = new ArrayList<Object>();
	params.add(id);
	ProductDetail proDetail = utils.findSimpleRefResult(sql, params, ProductDetail.class);
	return proDetail;
}
//��ѯ��ɫ
public List<String> queryAllColorsByType(String type) throws SQLException{
	String sql ="select DISTINCT(color) from t_product_detail where type =?";
	List<String> params = new ArrayList<String>();
	params.add(type);
	ResultSet set = utils.query(sql, params.toArray());
	//List<Object> list = new ArrayList<Object>(); 
	params.clear();
	while(set.next())
	{
		params.add(set.getString(1));
	}
	return params;	
}
//���Ұ汾
public List<String> queryAllVersionsByType(String type) throws SQLException{
	String sql ="select DISTINCT(version) from t_product_detail where type =?";
	List<String> params = new ArrayList<String>();
	params.add(type);
	ResultSet set = utils.query(sql, params.toArray());
	//List<Object> list = new ArrayList<Object>(); 
	params.clear();
	while(set.next())
	{
		params.add(set.getString(1));
	}
	return params;	
}
//storageCapacity
public List<String> queryAllStorageByType(String type) throws SQLException{
	String sql ="select DISTINCT(storageCapacity) from t_product_detail where type =?";
	List<String> params = new ArrayList<String>();
	params.add(type);
	ResultSet set = utils.query(sql, params.toArray());
	//List<Object> list = new ArrayList<Object>(); 
	params.clear();
	while(set.next())
	{
		params.add(set.getString(1));
	}
	return params;	
}
public List<String> queryPriceAndNum(String color,String storage,String version) throws SQLException{
	String sql ="select price,inventoryNumber,productId from t_product_detail where color=? and storageCapacity =? and version=?";
	List<String> params = new ArrayList<String>();
	params.add(color);
	params.add(storage);
	params.add(version);
	ResultSet set = utils.query(sql, params.toArray());
	//List<Object> list = new ArrayList<Object>(); 
	params.clear();
	while(set.next())
	{
		params.add(set.getString(1));
		params.add(set.getString(2));
		params.add(set.getString(3));
	}
	return params;	
}
public boolean addProduct(ProductDetail pd) throws SQLException{
	String sql = "insert into t_product_detail VALUES(null,?,?,'XXX',?,?,?,?,?,?)";
	List<Object> params = new ArrayList<Object>();
	params.add(pd.getBrand());
	params.add(pd.getModel());
	params.add(pd.getPrice());
	params.add(pd.getColor());
	params.add(pd.getStorageCapacity());
	params.add(pd.getInventoryNumber());
	params.add(pd.getVersion());
	params.add(pd.getType());
	boolean isOK = utils.updateByPreparedStatement(sql, params);
	return isOK;
	
}
   
}
