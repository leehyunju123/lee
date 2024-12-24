package com.koffice.sales.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koffice.VO.sales.SalesInfoVO;
import com.koffice.sales.dao.salesDao;

@Service
public class salesService {

	@Autowired
	salesDao dao;
	
	public int selectSalesCount(SalesInfoVO vo)throws Exception {
		return dao.selectSalesCount(vo);
	}
	
	public List<SalesInfoVO> selectSalesInfoList(SalesInfoVO vo)throws Exception {
		return dao.selectSalesInfoList(vo);
	}
	
	public List<SalesInfoVO> selectSalesInfo(SalesInfoVO vo) throws Exception {
		return dao.selectSalesInfo(vo);
	}
}
