package com.kos.restaurant.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kos.vo.RestaurantInfoVO;

@Repository
public interface restaurantDao {

	public List<RestaurantInfoVO> selectRestaurantInfoList(RestaurantInfoVO vo) throws Exception;
	

}
