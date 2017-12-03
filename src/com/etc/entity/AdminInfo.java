package com.etc.entity;

import com.etc.dao.UserManageDao;

public class AdminInfo {
	private Long id;
	private String username;
	private String password;
	private String address;
	private String email;
	private Long tel;
	private String sex;
	private String nickname;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Long getTel() {
		return tel;
	}
	public void setTel(Long tel) {
		this.tel = tel;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	@Override
	public String toString() {
		return "AdminInfo [id=" + id + ", username=" + username + ", password="
				+ password + ", address=" + address + ", email=" + email
				+ ", tel=" + tel + ", sex=" + sex + ", nickname=" + nickname
				+ "]";
	}
	public AdminInfo(Long id, String username, String password, String address,
			String email, Long tel, String sex, String nickname) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.address = address;
		this.email = email;
		this.tel = tel;
		this.sex = sex;
		this.nickname = nickname;
	}
	public AdminInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	
}
