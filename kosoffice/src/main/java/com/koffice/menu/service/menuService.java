package com.koffice.menu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koffice.VO.menu.MenuInfoVO;
import com.koffice.menu.dao.menuDao;

@Service
public class menuService {
	@Autowired
	menuDao dao;
	
	
	public int selectMenuCount(MenuInfoVO vo)throws Exception {
		return dao.selectMenuCount(vo);
	}
	
	public List<MenuInfoVO> selectMenuInfoList(MenuInfoVO vo)throws Exception {
		return dao.selectMenuInfoList(vo);
	}
	
	public MenuInfoVO selectMenuInfo(MenuInfoVO vo) throws Exception {
		return dao.selectMenuInfo(vo);
	}
	
	public int insertMenuInfo(MenuInfoVO vo) throws Exception {
		return dao.insertMenuInfo(vo);
	}
	
	public int updateMenuInfo(MenuInfoVO vo) throws Exception {
		return dao.updateMenuInfo(vo);
	}
	
}
