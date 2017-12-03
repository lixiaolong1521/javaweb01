package com.etc.entity;

public class Product {
	private Long proId;
	private String proName;
	private Long proPrice;
	private Long proNum;
	public Long getProId() {
		return proId;
	}
	public void setProId(Long proId) {
		this.proId = proId;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public Long getProPrice() {
		return proPrice;
	}
	public void setProPrice(Long proPrice) {
		this.proPrice = proPrice;
	}
	public Long getProNum() {
		return proNum;
	}
	public void setProNum(Long proNum) {
		this.proNum = proNum;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(Long proId, String proName, Long proPrice, Long proNum) {
		super();
		this.proId = proId;
		this.proName = proName;
		this.proPrice = proPrice;
		this.proNum = proNum;
	}
	@Override
	public String toString() {
		return "Product [proId=" + proId + ", proName=" + proName
				+ ", proPrice=" + proPrice + ", proNum=" + proNum + "]";
	}
	
}
