package com.kos.restaurant.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kos.restaurant.dao.restaurantDao;
import com.kos.vo.RestaurantInfoVO;

@Service
public class restaurantService {
	
	@Autowired
	restaurantDao dao;

	public List<RestaurantInfoVO> selectRestaurantInfoList(RestaurantInfoVO vo) throws Exception {
		return dao.selectRestaurantInfoList(vo);
	}

}
