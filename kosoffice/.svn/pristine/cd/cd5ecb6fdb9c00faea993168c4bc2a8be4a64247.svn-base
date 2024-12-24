package com.koffice.manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koffice.VO.manager.ManagerInfoVO;
import com.koffice.VO.menu.MenuInfoVO;
import com.koffice.manager.dao.managerDao;

@Service
public class managerService {
	@Autowired
	managerDao dao;
	
	public int selectManagerCount(ManagerInfoVO vo)throws Exception {
		return dao.selectManagerCount(vo);
	}
	
	public List<ManagerInfoVO> selectManagerInfoList(ManagerInfoVO vo)throws Exception {
		return dao.selectManagerInfoList(vo);
	}
	
	public ManagerInfoVO selectManagerInfo(ManagerInfoVO vo) throws Exception {
		return dao.selectManagerInfo(vo);
	}
	
	public int insertManagerInfo(ManagerInfoVO vo) throws Exception {
		return dao.insertManagerInfo(vo);
	}
	
	public int updateManagerInfo(ManagerInfoVO vo) throws Exception {
		return dao.updateManagerInfo(vo);
	}
}
