package com.koffice.VO.restaurant;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.koffice.VO.common.PageVO;


//import lombok.Data;


public class RestaurantInfoVO extends PageVO{
	private String restaurantCode;
	private String restaurantName;
	private String restaurantCategory;
	
	private String restaurantCategoryName;
	private String restaurantPhone;
	private String restaurantEmail;
	private String openDt;
	private String closeDt;
	private String ceoName;
	private String businessNumber;
	private String openYn;
	private String regDt;
	private String regId;
	private String menuImage;
	private String restaurantImage;
	
	@JsonIgnore
	private MultipartFile restaurantFile;
	
	
	private String insType;		//I: insert, U:update
	
	
	public MultipartFile getRestaurantFile() {
		return restaurantFile;
	}
	public void setRestaurantFile(MultipartFile restaurantFile) {
		this.restaurantFile = restaurantFile;
	}
	public String getRestaurantCategory() {
		return restaurantCategory;
	}
	public void setRestaurantCategory(String restaurantCategory) {
		this.restaurantCategory = restaurantCategory;
	}
	public String getRestaurantCode() {
		return restaurantCode;
	}
	public void setRestaurantCode(String restaurantCode) {
		this.restaurantCode = restaurantCode;
	}
	public String getRestaurantName() {
		return restaurantName;
	}
	public void setRestaurantName(String restaurantName) {
		this.restaurantName = restaurantName;
	}
	public String getRestaurantCategoryName() {
		return restaurantCategoryName;
	}
	public void setRestaurantCategoryName(String restaurantCategoryName) {
		this.restaurantCategoryName = restaurantCategoryName;
	}
	public String getRestaurantPhone() {
		return restaurantPhone;
	}
	public void setRestaurantPhone(String restaurantPhone) {
		this.restaurantPhone = restaurantPhone;
	}
	public String getRestaurantEmail() {
		return restaurantEmail;
	}
	public void setRestaurantEmail(String restaurantEmail) {
		this.restaurantEmail = restaurantEmail;
	}
	public String getOpenDt() {
		return openDt;
	}
	public void setOpenDt(String openDt) {
		this.openDt = openDt;
	}
	public String getCloseDt() {
		return closeDt;
	}
	public void setCloseDt(String closeDt) {
		this.closeDt = closeDt;
	}
	public String getCeoName() {
		return ceoName;
	}
	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}
	public String getBusinessNumber() {
		return businessNumber;
	}
	public void setBusinessNumber(String businessNumber) {
		this.businessNumber = businessNumber;
	}
	public String getOpenYn() {
		return openYn;
	}
	public void setOpenYn(String openYn) {
		this.openYn = openYn;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	public String getRegId() {
		return regId;
	}
	public void setRegId(String regId) {
		this.regId = regId;
	}
	public String getInsType() {
		return insType;
	}
	public void setInsType(String insType) {
		this.insType = insType;
	}
	public String getMenuImage() {
		return menuImage;
	}
	public void setMenuImage(String menuImage) {
		this.menuImage = menuImage;
	}
	public String getRestaurantImage() {
		return restaurantImage;
	}
	public void setRestaurantImage(String restaurantImage) {
		this.restaurantImage = restaurantImage;
	}
	
	
	
}
