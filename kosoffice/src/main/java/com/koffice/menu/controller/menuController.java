package com.koffice.menu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koffice.VO.common.FileVO;
import com.koffice.VO.menu.MenuInfoVO;
import com.koffice.common.service.FileService;
import com.koffice.menu.service.menuService;
import com.koffice.restaurant.vo.MenuVO;
import com.koffice.util.Constant;

@Controller
public class menuController {
	
	@Autowired
	menuService service;
	
	@Autowired
	FileService fileservice;
	
	@RequestMapping("/menu/list")
	public String menuList() throws Exception {
		return "/menu/menu_list";
	}
	@RequestMapping("/menu/reg")
	public String menuReg() throws Exception {
		return "/menu/menu_reg";
	}
	@RequestMapping("/menu/select")
	public String menuSelect() throws Exception {
		return "/menu/menu_select";
	}
	
	@PostMapping("/menu/search")
	@ResponseBody
	public MenuVO search(@ModelAttribute MenuInfoVO vo) throws Exception {
		//해당 데이터수를 조회 
		int totalPage = service.selectMenuCount(vo);
		
		//실제 데이터 조회 
		List<MenuInfoVO> list=service.selectMenuInfoList(vo);
		MenuVO rvo = new MenuVO();
		rvo.setMenulist(list);
		rvo.setTotal(totalPage); //총 데이터수.
		rvo.setStartPage(vo.getStartPage()); 
		rvo.setCurrentPage(vo.getCurrentPage());//현재페이지

		return rvo;
	}
	
	@RequestMapping("/menu/getMenuInfo")
	@ResponseBody
	public MenuInfoVO menuinfo(@ModelAttribute MenuInfoVO vo) throws Exception {
		vo = service.selectMenuInfo(vo);
		return vo;
	}
	
	@PostMapping("/menu/save")
	@ResponseBody
	public boolean save(@ModelAttribute MenuInfoVO vo) throws Exception {
	
		if(vo.getMenuFile()!=null) {
			
			FileVO filevo = new FileVO();
			filevo.setFile(vo.getMenuFile());
			filevo.setOriginPath(Constant.UPLOAD_PATH);
			filevo = fileservice.createFile(filevo);
			vo.setMenuImage(Constant.IMAGE_PATH + "/" + filevo.getFileNm());
		}else {
			vo.setMenuImage("");
		}
			
		int cnt =0;
		
		if(vo.getInsType().equals("I")) {
			cnt = service.insertMenuInfo(vo);
		}else {
			cnt = service.updateMenuInfo(vo);
		}
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
}
