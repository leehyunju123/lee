package com.kos.order.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kos.vo.OrderInfoVO;
import com.kos.vo.restaurantOrderMenuInfoVO;

@Repository
public interface orderDao {

	public String selectMaxOrderNo() throws Exception;
	
	public int insertRestaurantOrderInfo(OrderInfoVO vo) throws Exception;

	public int insertRestaurantOrderMenu(restaurantOrderMenuInfoVO vo)throws Exception;
	
	public int insertOrderInfo(OrderInfoVO vo)  throws Exception ;
	
	public List<OrderInfoVO> selectOrderInfo(OrderInfoVO vo) throws Exception ;
}
