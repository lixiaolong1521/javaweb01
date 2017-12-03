package com.etc.entity;

import java.math.BigDecimal;

public class productxxxxxxxx {
        private BigDecimal ID;
        private String BRAND;
        private String MODEL;//型号
        private String PRICE;
        private String COLOR;
        private String STORAGECAPACITY;//内存
        private String INVENTORYNUMBER;//库存
		public BigDecimal getID() {
			return ID;
		}
		public void setID(BigDecimal iD) {
			ID = iD;
		}
		public String getBRAND() {
			return BRAND;
		}
		public void setBRAND(String bRAND) {
			BRAND = bRAND;
		}
		public String getMODEL() {
			return MODEL;
		}
		public void setMODEL(String mODEL) {
			MODEL = mODEL;
		}
		public String getPRICE() {
			return PRICE;
		}
		public void setPRICE(String pRICE) {
			PRICE = pRICE;
		}
		public String getCOLOR() {
			return COLOR;
		}
		public void setCOLOR(String cOLOR) {
			COLOR = cOLOR;
		}
		public String getSTORAGECAPACITY() {
			return STORAGECAPACITY;
		}
		public void setSTORAGECAPACITY(String sTORAGECAPACITY) {
			STORAGECAPACITY = sTORAGECAPACITY;
		}
		public String getINVENTORYNUMBER() {
			return INVENTORYNUMBER;
		}
		public void setINVENTORYNUMBER(String iNVENTORYNUMBER) {
			INVENTORYNUMBER = iNVENTORYNUMBER;
		}
		public productxxxxxxxx() {
			super();
			// TODO Auto-generated constructor stub
		}
		public productxxxxxxxx(BigDecimal iD, String bRAND, String mODEL, String pRICE,
				String cOLOR, String sTORAGECAPACITY, String iNVENTORYNUMBER) {
			super();
			ID = iD;
			BRAND = bRAND;
			MODEL = mODEL;
			PRICE = pRICE;
			COLOR = cOLOR;
			STORAGECAPACITY = sTORAGECAPACITY;
			INVENTORYNUMBER = iNVENTORYNUMBER;
		}
		@Override
		public String toString() {
			return "product [ID=" + ID + ", BRAND=" + BRAND + ", MODEL="
					+ MODEL + ", PRICE=" + PRICE + ", COLOR=" + COLOR
					+ ", STORAGECAPACITY=" + STORAGECAPACITY
					+ ", INVENTORYNUMBER=" + INVENTORYNUMBER + "]";
		}
        
}
