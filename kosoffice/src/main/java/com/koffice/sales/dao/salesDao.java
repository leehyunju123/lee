package com.koffice.sales.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.koffice.VO.sales.SalesInfoVO;

@Repository
public interface salesDao {
	
	public int selectSalesCount(SalesInfoVO vo)throws Exception;
	
	public List<SalesInfoVO> selectSalesInfoList(SalesInfoVO vo)throws Exception;
	
	public List<SalesInfoVO> selectSalesInfo(SalesInfoVO vo) throws Exception;
	
	
	
	
}

