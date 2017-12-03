package com.etc.entity;

public class ProductDetail {
     private Long productId;
     private String brand;
     private String model;
     private String img;
     private Double price;
     private String color;
     private Integer storageCapacity;
     private Integer inventoryNumber;
     private String version;
     private String type;
	public ProductDetail() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductDetail(Long productId, String brand, String model,
			String img, Double price, String color, Integer storageCapacity,
			Integer inventoryNumber, String version, String type) {
		super();
		this.productId = productId;
		this.brand = brand;
		this.model = model;
		this.img = img;
		this.price = price;
		this.color = color;
		this.storageCapacity = storageCapacity;
		this.inventoryNumber = inventoryNumber;
		this.version = version;
		this.type = type;
	}
	public Long getProductId() {
		return productId;
	}
	public void setProductId(Long productId) {
		this.productId = productId;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public Integer getStorageCapacity() {
		return storageCapacity;
	}
	public void setStorageCapacity(Integer storageCapacity) {
		this.storageCapacity = storageCapacity;
	}
	public Integer getInventoryNumber() {
		return inventoryNumber;
	}
	public void setInventoryNumber(Integer inventoryNumber) {
		this.inventoryNumber = inventoryNumber;
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "ProductDetail [productId=" + productId + ", brand=" + brand
				+ ", model=" + model + ", img=" + img + ", price=" + price
				+ ", color=" + color + ", storageCapacity=" + storageCapacity
				+ ", inventoryNumber=" + inventoryNumber + ", version="
				+ version + ", type=" + type + "]";
	}
	
	
     
}
