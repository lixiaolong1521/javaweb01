package com.etc.entity;

import java.math.BigDecimal;

public class User {
      private BigDecimal ID;
      private String USERNAME;
      private String PASSWORD;
      private String EMAIL;
      private String PHONENUMBER;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(BigDecimal iD, String uSERNAME, String pASSWORD, String eMAIL,
			String pHONENUMBER) {
		super();
		ID = iD;
		USERNAME = uSERNAME;
		PASSWORD = pASSWORD;
		EMAIL = eMAIL;
		PHONENUMBER = pHONENUMBER;
	}
	public BigDecimal getID() {
		return ID;
	}
	public void setID(BigDecimal iD) {
		ID = iD;
	}
	public String getUSERNAME() {
		return USERNAME;
	}
	public void setUSERNAME(String uSERNAME) {
		USERNAME = uSERNAME;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public String getPHONENUMBER() {
		return PHONENUMBER;
	}
	public void setPHONENUMBER(String pHONENUMBER) {
		PHONENUMBER = pHONENUMBER;
	}
	@Override
	public String toString() {
		return "User [ID=" + ID + ", USERNAME=" + USERNAME + ", PASSWORD="
				+ PASSWORD + ", PHONENUMBER=" + PHONENUMBER + "]";
	}
      
}
