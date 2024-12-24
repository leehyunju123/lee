package com.kos.vo;

public class restaurantOrderMenuInfoVO {

	private String orderNo;
	private String restaurantCode;
	private String orderDate;
	private String menuCode;
	private int qty;
	private int price;
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getRestaurantCode() {
		return restaurantCode;
	}
	public void setRestaurantCode(String restaurantCode) {
		this.restaurantCode = restaurantCode;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getMenuCode() {
		return menuCode;
	}
	public void setMenuCode(String menuCode) {
		this.menuCode = menuCode;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
