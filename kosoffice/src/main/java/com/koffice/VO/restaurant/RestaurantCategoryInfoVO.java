package com.koffice.VO.restaurant;

import com.koffice.VO.common.PageVO;

public class RestaurantCategoryInfoVO extends PageVO{
	public String restaurantCategoryCode;
	public String restaurantCategoryName;
	public String regDt;
	public String activeYn;
	public String regId;
	private String insType;		
	
	public String getInsType() {
		return insType;
	}
	public void setInsType(String insType) {
		this.insType = insType;
	}
	public String getRestaurantCategoryCode() {
		return restaurantCategoryCode;
	}
	public void setRestaurantCategoryCode(String restaurantCategoryCode) {
		this.restaurantCategoryCode = restaurantCategoryCode;
	}
	public String getRestaurantCategoryName() {
		return restaurantCategoryName;
	}
	public void setRestaurantCategoryName(String restaurantCategoryName) {
		this.restaurantCategoryName = restaurantCategoryName;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	public String getActiveYn() {
		return activeYn;
	}
	public void setActiveYn(String activeYn) {
		this.activeYn = activeYn;
	}
	public String getRegId() {
		return regId;
	}
	public void setRegId(String regId) {
		this.regId = regId;
	}
	
}
//import lombok.Data;


	
	

