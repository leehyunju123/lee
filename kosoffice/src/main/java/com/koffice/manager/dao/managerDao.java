package com.koffice.manager.dao;

import java.util.List;

import com.koffice.VO.manager.ManagerInfoVO;

public interface managerDao {

	public int selectManagerCount(ManagerInfoVO vo)throws Exception;
	
	public List<ManagerInfoVO> selectManagerInfoList(ManagerInfoVO vo)throws Exception;
	
	public ManagerInfoVO selectManagerInfo(ManagerInfoVO vo) throws Exception;
	
	public int insertManagerInfo(ManagerInfoVO vo) throws Exception;
	
	public int updateManagerInfo(ManagerInfoVO vo) throws Exception ;
	
}
