package com.etc.dao;

import java.util.List;

import com.etc.entity.OrderItems;
import com.etc.utils.JDBCUtils;

public class OrderItemsDao {
   private JDBCUtils utils = new JDBCUtils();

public OrderItemsDao() {
	utils.getConnection();
}
public List<OrderItems> queryAllOrderItems() throws Exception{
	String sql = "SELECT * FROM t_orderItems";
	List<OrderItems> list = utils.findMoreRefResult(sql, null, OrderItems.class);
	return list;
}
   
}
