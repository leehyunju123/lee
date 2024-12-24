package com.koffice.order.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.koffice.VO.order.OrderInfoVO;

@Repository
public interface orderDao {

	public int selectOrderCount(OrderInfoVO vo)throws Exception;
	
	public List<OrderInfoVO> selectOrderInfoList(OrderInfoVO vo)throws Exception;
	
	public List<OrderInfoVO> selectOrderInfo(OrderInfoVO vo) throws Exception;
	
	public OrderInfoVO selectaRestaurantInfo(OrderInfoVO vo) throws Exception;
	
	
}
