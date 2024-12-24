package com.koffice.restaurant.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koffice.VO.restaurant.RestaurantCategoryInfoVO;
import com.koffice.restaurant.service.restaurantCategoryService;
import com.koffice.restaurant.vo.RestaurantCategoryVO;

@Controller
public class restaurantCategoryController {
	
	@Autowired
	restaurantCategoryService service;
	
	@PostMapping("/category/search")
	@ResponseBody
	public RestaurantCategoryVO search(@ModelAttribute RestaurantCategoryInfoVO vo) throws Exception {
		//해당 데이터수를 조회 
		int totalPage = service.selectRestaurantCategoryCount(vo);
		
		//실제 데이터 조회 
		List<RestaurantCategoryInfoVO> list=service.selectRestaurantCategoryInfoList(vo);
		RestaurantCategoryVO rvo = new RestaurantCategoryVO();
		rvo.setRestaurantCategorylist(list);
		rvo.setTotal(totalPage); //총 데이터수.
		rvo.setStartPage(vo.getStartPage()); 
		rvo.setCurrentPage(vo.getCurrentPage());//현재페이지

		return rvo;
	}
	
	
	@RequestMapping("/category/getRestaurantCategoryInfo")
	@ResponseBody
	public RestaurantCategoryInfoVO restaurantCategoryinfo(@ModelAttribute RestaurantCategoryInfoVO vo) throws Exception {
		vo = service.selectRestaurantCategoryInfo(vo);
		return vo;
	}
	
	@PostMapping("/category/save")
	@ResponseBody
	public boolean save(@ModelAttribute RestaurantCategoryInfoVO vo) throws Exception {

		int cnt =0;
		
		if(vo.getInsType().equals("I")) {
			cnt = service.insertRestaurantCategoryInfo(vo);
		}else {
			cnt = service.updateRestaurantCategoryInfo(vo);
		}
		
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	
	
}
	
	
