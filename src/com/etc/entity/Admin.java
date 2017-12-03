package com.etc.entity;

import java.math.BigDecimal;

public class Admin {
  private  Long ADMINID;
  private String ADMINNAME;
  private String PASSWORD;
public Admin() {
	super();
	// TODO Auto-generated constructor stub
}
public Admin(Long aDMINID, String aDMINNAME, String pASSWORD) {
	super();
	ADMINID = aDMINID;
	ADMINNAME = aDMINNAME;
	PASSWORD = pASSWORD;
}
public Long getADMINID() {
	return ADMINID;
}
public void setADMINID(Long aDMINID) {
	ADMINID = aDMINID;
}
public String getADMINNAME() {
	return ADMINNAME;
}
public void setADMINNAME(String aDMINNAME) {
	ADMINNAME = aDMINNAME;
}
public String getPASSWORD() {
	return PASSWORD;
}
public void setPASSWORD(String pASSWORD) {
	PASSWORD = pASSWORD;
}
@Override
public String toString() {
	return "Admin [ADMINID=" + ADMINID + ", ADMINNAME=" + ADMINNAME
			+ ", PASSWORD=" + PASSWORD + "]";
}

}
