package com.koffice.restaurant.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koffice.VO.restaurant.RestaurantCategoryInfoVO;
import com.koffice.VO.restaurant.RestaurantInfoVO;
import com.koffice.restaurant.dao.restaurantCategoryDao;

@Service
public class restaurantCategoryService {

	@Autowired
	restaurantCategoryDao dao;
	
	public int selectRestaurantCategoryCount(RestaurantCategoryInfoVO vo)throws Exception {
		return dao.selectRestaurantCategoryCount(vo);
	}
	
	public List<RestaurantCategoryInfoVO> selectRestaurantCategoryInfoList(RestaurantCategoryInfoVO vo)throws Exception {
		return dao.selectRestaurantCategoryInfoList(vo);
	}
	
	public RestaurantCategoryInfoVO selectRestaurantCategoryInfo(RestaurantCategoryInfoVO vo) throws Exception {
		return dao.selectRestaurantCategoryInfo(vo);
	}
	
	public int insertRestaurantCategoryInfo(RestaurantCategoryInfoVO vo) throws Exception {
		return dao.insertRestaurantCategoryInfo(vo);
	}
	
	public int updateRestaurantCategoryInfo(RestaurantCategoryInfoVO vo) throws Exception {
		return dao.updateRestaurantCategoryInfo(vo);
	}
}
