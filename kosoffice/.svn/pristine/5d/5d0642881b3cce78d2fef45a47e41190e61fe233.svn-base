package com.koffice.restaurant.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koffice.VO.restaurant.RestaurantInfoVO;
import com.koffice.restaurant.dao.restaurantDao;

@Service
public class restaurantService {

	@Autowired
	restaurantDao dao;
	
	public int selectRestaurantCount(RestaurantInfoVO vo)throws Exception {
		return dao.selectRestaurantCount(vo);
	}
	
	public List<RestaurantInfoVO> selectRestaurantInfoList(RestaurantInfoVO vo)throws Exception {
		return dao.selectRestaurantInfoList(vo);
	}
	
	public RestaurantInfoVO selectRestaurantInfo(RestaurantInfoVO vo) throws Exception {
		return dao.selectRestaurantInfo(vo);
	}
	
	public int insertRestaurantInfo(RestaurantInfoVO vo) throws Exception {
		return dao.insertRestaurantInfo(vo);
	}
	
	public int updateRestaurantInfo(RestaurantInfoVO vo) throws Exception {
		return dao.updateRestaurantInfo(vo);
	}
}
