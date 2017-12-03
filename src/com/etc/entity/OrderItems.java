package com.etc.entity;

public class OrderItems {
   private Long orderId;
   private String orderDate;
   private String orderContent;
   private Double orderPrice;
   private String userName;
   private String phoneNumber;
   private String address;
   private String orderStatus;
   private String saleStatus;//Âô¼Ò×´Ì¬
public OrderItems() {
	super();
	// TODO Auto-generated constructor stub
}
public OrderItems(Long orderId, String orderDate, String orderContent,
		Double orderPrice, String userName, String phoneNumber, String address,
		String orderStatus, String saleStatus) {
	super();
	this.orderId = orderId;
	this.orderDate = orderDate;
	this.orderContent = orderContent;
	this.orderPrice = orderPrice;
	this.userName = userName;
	this.phoneNumber = phoneNumber;
	this.address = address;
	this.orderStatus = orderStatus;
	this.saleStatus = saleStatus;
}
public Long getOrderId() {
	return orderId;
}
public void setOrderId(Long orderId) {
	this.orderId = orderId;
}
public String getOrderDate() {
	return orderDate;
}
public void setOrderDate(String orderDate) {
	this.orderDate = orderDate;
}
public String getOrderContent() {
	return orderContent;
}
public void setOrderContent(String orderContent) {
	this.orderContent = orderContent;
}
public Double getOrderPrice() {
	return orderPrice;
}
public void setOrderPrice(Double orderPrice) {
	this.orderPrice = orderPrice;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getPhoneNumber() {
	return phoneNumber;
}
public void setPhoneNumber(String phoneNumber) {
	this.phoneNumber = phoneNumber;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getOrderStatus() {
	return orderStatus;
}
public void setOrderStatus(String orderStatus) {
	this.orderStatus = orderStatus;
}
public String getSaleStatus() {
	return saleStatus;
}
public void setSaleStatus(String saleStatus) {
	this.saleStatus = saleStatus;
}
@Override
public String toString() {
	return "OrderItems [orderId=" + orderId + ", orderDate=" + orderDate
			+ ", orderContent=" + orderContent + ", orderPrice=" + orderPrice
			+ ", userName=" + userName + ", phoneNumber=" + phoneNumber
			+ ", address=" + address + ", orderStatus=" + orderStatus
			+ ", saleStatus=" + saleStatus + "]";
}
   
}
