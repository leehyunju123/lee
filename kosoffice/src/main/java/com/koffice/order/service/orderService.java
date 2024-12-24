package com.koffice.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koffice.VO.order.OrderInfoVO;
import com.koffice.order.dao.orderDao;

@Service
public class orderService {
	@Autowired
	orderDao dao;
	
	public int selectOrderCount(OrderInfoVO vo)throws Exception {
		return dao.selectOrderCount(vo);
	}
	
	public List<OrderInfoVO> selectOrderInfoList(OrderInfoVO vo)throws Exception {
		return dao.selectOrderInfoList(vo);
	}
	
	public List<OrderInfoVO> selectOrderInfo(OrderInfoVO vo) throws Exception {
		return dao.selectOrderInfo(vo);
	}
	
	public OrderInfoVO selectaRestaurantInfo(OrderInfoVO vo) throws Exception {
		return dao.selectaRestaurantInfo(vo);
	}
	
	
}
