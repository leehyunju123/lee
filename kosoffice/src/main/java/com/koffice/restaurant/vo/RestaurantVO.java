package com.koffice.restaurant.vo;

import java.util.List;

import com.koffice.VO.common.PageVO;
import com.koffice.VO.restaurant.RestaurantInfoVO;

public class RestaurantVO extends PageVO {

	private List<RestaurantInfoVO> restaurantlist;

	public List<RestaurantInfoVO> getRestaurantlist() {
		return restaurantlist;
	}

	public void setRestaurantlist(List<RestaurantInfoVO> restaurantlist) {
		this.restaurantlist = restaurantlist;
	}
	
	
	
	
}
