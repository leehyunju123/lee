package com.koffice.restaurant.vo;

import java.util.List;

import com.koffice.VO.common.PageVO;
import com.koffice.VO.menu.MenuInfoVO;

public class MenuVO extends PageVO {

	private List<MenuInfoVO> menulist;

	public List<MenuInfoVO> getMenulist() {
		return menulist;
	}

	public void setMenulist(List<MenuInfoVO> menulist) {
		this.menulist = menulist;
	}
	
	
	
	
}
