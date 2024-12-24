package com.koffice.restaurant.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koffice.VO.common.FileVO;
import com.koffice.VO.restaurant.RestaurantInfoVO;
import com.koffice.common.service.FileService;
import com.koffice.restaurant.service.restaurantService;
import com.koffice.restaurant.vo.RestaurantVO;
import com.koffice.util.Constant;

@Controller
public class restaurantController {
	
	@Autowired
	restaurantService service;
	
	@Autowired
	FileService fileservice;

	@RequestMapping("/restaurant/list")
	public String restaurantList() throws Exception {
		return "/restaurant/restaurant_list";
	}

	@RequestMapping("/restaurant/detail")
	public String restaurantDetail() throws Exception {
		return "/restaurant/restaurant_detail";
	}

	@RequestMapping("/restaurant/correction")
	public String restaurantCorrection() throws Exception {
		return "/restaurant/restaurant_correction";
	}

	@RequestMapping("/restaurant/reg")
	public String restaurantReg() throws Exception {
		return "/restaurant/restaurant_reg";
	}

	@RequestMapping("/restaurant/category")
	public String restaurantCategory() throws Exception {
		return "/restaurant/restaurant_category";
	}

	@RequestMapping("/restaurant/division")
	public String restaurantDivision() throws Exception {
		return "/restaurant/restaurant_division";
	}
	
	

	@PostMapping("/restaurant/search")
	@ResponseBody
	public RestaurantVO search(@ModelAttribute RestaurantInfoVO vo) throws Exception {
		//해당 데이터수를 조회 
		int totalPage = service.selectRestaurantCount(vo);
		
		//실제 데이터 조회 
		List<RestaurantInfoVO> list=service.selectRestaurantInfoList(vo);
		RestaurantVO rvo = new RestaurantVO();
		rvo.setRestaurantlist(list);
		rvo.setTotal(totalPage); //총 데이터수.
		rvo.setStartPage(vo.getStartPage()); 
		rvo.setCurrentPage(vo.getCurrentPage());//현재페이지

		return rvo;
	}
	
	@RequestMapping("/restaurant/getRestaurantInfo")
	@ResponseBody
	public RestaurantInfoVO restaurantinfo(@ModelAttribute RestaurantInfoVO vo) throws Exception {
		vo = service.selectRestaurantInfo(vo);
		return vo;
	}
	
	@PostMapping("/restaurant/save")
	@ResponseBody
	public boolean save(@ModelAttribute RestaurantInfoVO vo) throws Exception {
	
		if(vo.getRestaurantFile()!=null) {
			
			FileVO filevo = new FileVO();
			filevo.setFile(vo.getRestaurantFile());
			filevo.setOriginPath(Constant.UPLOAD_PATH);
			filevo = fileservice.createFile(filevo);
			vo.setRestaurantImage(Constant.IMAGE_PATH + "/" + filevo.getFileNm());
		}else {
			vo.setRestaurantImage("");
		}
			
		int cnt =0;
		
		if(vo.getInsType().equals("I")) {
			cnt = service.insertRestaurantInfo(vo);
		}else {
			cnt = service.updateRestaurantInfo(vo);
		}
		if(cnt>0) {
			return true;
		}else {	
			return false;
		}
	}
	
	/*
	@RequestMapping("/restaurant/update")
	public String update(@ModelAttribute RestaurantInfoVO vo, Model model) throws Exception{
		model.addAttribute("restaurantCode", vo.getRestaurantCode());
		return"restaurant/restaurant_update";
	}
	*/
	/* 기존
	@PostMapping("/restaurant/search")
	@ResponseBody
	public List<RestaurantInfoVO> search(@ModelAttribute RestaurantInfoVO vo) throws Exception {
		List<RestaurantInfoVO> list=service.selectRestaurantInfoList(vo);
		return list;
		//return vo;
	}
	*/
}
