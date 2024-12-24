package com.koffice.menu.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.koffice.VO.menu.MenuInfoVO;

@Repository
public interface menuDao {

	
	public int selectMenuCount(MenuInfoVO vo)throws Exception;
	
	public List<MenuInfoVO> selectMenuInfoList(MenuInfoVO vo)throws Exception;
	
	public MenuInfoVO selectMenuInfo(MenuInfoVO vo) throws Exception;
	
	public int insertMenuInfo(MenuInfoVO vo) throws Exception;
	
	public int updateMenuInfo(MenuInfoVO vo) throws Exception;
}
