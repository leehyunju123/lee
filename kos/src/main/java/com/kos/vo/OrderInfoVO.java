package com.kos.vo;

import java.util.List;

public class OrderInfoVO {
	
	private String orderNo;
	private String orderDt;
	private int orderPrice;
	private int paymentAmount;
	private int orderQty;
	private String pointYN;
	private int discountAmount;
	private String paymentMethodCode;
	private String restaurantOrderNo;
	private String menuCode;
	private String qty;
	private String menuPrice;
	private String price;
	private String list;
	private String menuName;
	private String rn;
	
	private List<restaurantOrderMenuInfoVO> orderlist;
	
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getOrderDt() {
		return orderDt;
	}
	public void setOrderDt(String orderDt) {
		this.orderDt = orderDt;
	}
	public int getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}
	public int getPaymentAmount() {
		return paymentAmount;
	}
	public void setPaymentAmount(int paymentAmount) {
		this.paymentAmount = paymentAmount;
	}
	public int getOrderQty() {
		return orderQty;
	}
	public void setOrderQty(int orderQty) {
		this.orderQty = orderQty;
	}
	public String getPointYN() {
		return pointYN;
	}
	public void setPointYN(String pointYN) {
		this.pointYN = pointYN;
	}
	public int getDiscountAmount() {
		return discountAmount;
	}
	public void setDiscountAmount(int discountAmount) {
		this.discountAmount = discountAmount;
	}
	public String getPaymentMethodCode() {
		return paymentMethodCode;
	}
	public void setPaymentMethodCode(String paymentMethodCode) {
		this.paymentMethodCode = paymentMethodCode;
	}
	public String getRestaurantOrderNo() {
		return restaurantOrderNo;
	}
	public void setRestaurantOrderNo(String restaurantOrderNo) {
		this.restaurantOrderNo = restaurantOrderNo;
	}
	public String getMenuCode() {
		return menuCode;
	}
	public void setMenuCode(String menuCode) {
		this.menuCode = menuCode;
	}
	public String getQty() {
		return qty;
	}
	public void setQty(String qty) {
		this.qty = qty;
	}
	public String getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(String menuPrice) {
		this.menuPrice = menuPrice;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public List<restaurantOrderMenuInfoVO> getOrderlist() {
		return orderlist;
	}
	public void setOrderlist(List<restaurantOrderMenuInfoVO> orderlist) {
		this.orderlist = orderlist;
	}
	public String getList() {
		return list;
	}
	public void setList(String list) {
		this.list = list;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getRn() {
		return rn;
	}
	public void setRn(String rn) {
		this.rn = rn;
	}
	
}
