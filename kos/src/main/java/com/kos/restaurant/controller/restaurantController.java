package com.kos.restaurant.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kos.restaurant.service.restaurantService;
import com.kos.vo.RestaurantInfoVO;

@Controller
public class restaurantController {
	
	@Autowired
	restaurantService service;
	
	@RequestMapping("/main")
	public String main() throws Exception {
		return "/restaurant/main";
	}
	
	@PostMapping("/restaurant/getRestaurantInfo")
	@ResponseBody
	public List <RestaurantInfoVO> getrestaurantinfoList(@ModelAttribute RestaurantInfoVO vo) throws Exception {
			List<RestaurantInfoVO> restaurantList = service. selectRestaurantInfoList(vo);
			return restaurantList;
	}
	
}
