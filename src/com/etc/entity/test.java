package com.etc.entity;

public class test {
	private int id;
	private String name;
	private String status;
	private String date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public test(int id, String name, String status, String date) {
		super();
		this.id = id;
		this.name = name;
		this.status = status;
		this.date = date;
	}
	public test() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "test [id=" + id + ", name=" + name + ", status=" + status
				+ ", date=" + date + "]";
	}
	
}
