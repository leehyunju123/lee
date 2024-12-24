package com.kos.menu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kos.menu.service.menuService;
import com.kos.vo.MenuInfoVO;

@Controller
public class menuController {
	
	@Autowired
	menuService service;
	
	@RequestMapping("/menu/list")
	public String menuList() throws Exception {
		return "/menu/menu_list";
	}
	
	@RequestMapping("/menu/detail")
	public String menuDetail() throws Exception {
		return "/menu/menu_detail";
	}
	@PostMapping("/menu/getMenuInfo")
	@ResponseBody
	public List <MenuInfoVO> getmenuinfoList(@ModelAttribute MenuInfoVO vo) throws Exception {
			List<MenuInfoVO> menuList = service. selectMenuInfoList(vo);
			return menuList;
	}
	
	@RequestMapping("/menu/getDetailInfo")
	@ResponseBody
	public MenuInfoVO memberinfo(@ModelAttribute MenuInfoVO vo) throws Exception {
		vo = service.selectDetailInfo(vo);
		return vo;
	}
	
	

}
