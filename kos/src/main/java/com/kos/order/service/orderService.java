package com.kos.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kos.order.dao.orderDao;
import com.kos.vo.OrderInfoVO;
import com.kos.vo.restaurantOrderMenuInfoVO;

@Service
public class orderService {
	
	@Autowired
	orderDao dao;

	public String selectMaxOrderNo() throws Exception {
		return dao.selectMaxOrderNo();
	}
	
	public int insertRestaurantOrderInfo(OrderInfoVO vo) throws Exception {
		return dao.insertRestaurantOrderInfo(vo);
	}
	
	public int insertRestaurantOrderMenu(restaurantOrderMenuInfoVO vo)throws Exception {
		return dao.insertRestaurantOrderMenu(vo);
	}
	
	public int insertOrderInfo(OrderInfoVO vo)  throws Exception {
		return dao.insertOrderInfo(vo);
	}
	
	public List<OrderInfoVO> selectOrderInfo(OrderInfoVO vo) throws Exception {
		return dao.selectOrderInfo(vo);
	}
}
