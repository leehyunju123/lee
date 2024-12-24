package com.kos.menu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kos.menu.dao.menuDao;
import com.kos.vo.MenuInfoVO;

@Service
public class menuService {
	
	@Autowired
	menuDao dao;

	public List<MenuInfoVO> selectMenuInfoList(MenuInfoVO vo) throws Exception {
		return dao.selectMenuInfoList(vo);
	}
	
	public MenuInfoVO selectDetailInfo(MenuInfoVO vo) throws Exception {
		return dao.selectDetailInfo(vo);
	}
	
}
