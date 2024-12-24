package com.kos.menu.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kos.vo.MenuInfoVO;

@Repository
public interface menuDao {

	public List<MenuInfoVO> selectMenuInfoList(MenuInfoVO vo) throws Exception;
	
	public MenuInfoVO selectDetailInfo(MenuInfoVO vo) throws Exception;
}
