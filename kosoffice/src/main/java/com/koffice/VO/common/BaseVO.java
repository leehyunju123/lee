package com.koffice.VO.common;

public class BaseVO {

	private String regDt;
	private String updDt;
	private String delYn="N";
	
	private int shopHh;
	private int shopMm;
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	public String getUpdDt() {
		return updDt;
	}
	public void setUpdDt(String updDt) {
		this.updDt = updDt;
	}
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}
	public int getShopHh() {
		return shopHh;
	}
	public void setShopHh(int shopHh) {
		this.shopHh = shopHh;
	}
	public int getShopMm() {
		return shopMm;
	}
	public void setShopMm(int shopMm) {
		this.shopMm = shopMm;
	}
}