package com.koffice.order.vo;

import java.util.List;

import com.koffice.VO.common.PageVO;
import com.koffice.VO.order.OrderInfoVO;

public class OrderVO extends PageVO {

	private List<OrderInfoVO> orderlist;

	public List<OrderInfoVO> getOrderlist() {
		return orderlist;
	}

	public void setOrderlist(List<OrderInfoVO> orderlist) {
		this.orderlist = orderlist;
	}
	
	
	
	
}
