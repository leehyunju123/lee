package com.kos.payment.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kos.payment.dao.paymentDao;
import com.kos.vo.PointInfoVO;

@Service
public class paymentService {
	
	@Autowired
	paymentDao dao;
	
	
	public PointInfoVO selectPaymentInfo(PointInfoVO vo) throws Exception {
		return dao.selectPaymentInfo(vo);
	}
	
	public List<PointInfoVO> selectPaymentInfos(PointInfoVO vo) throws Exception {
		return dao.selectPaymentInfos(vo);
	}
	
	public List<PointInfoVO> selectOrderInfo(PointInfoVO vo) throws Exception {
		return dao.selectOrderInfo(vo);
	}
	
	public int updatePointInfo(PointInfoVO vo) throws Exception {
		return dao.updatePointInfo(vo);
	}
	
	public int insertAfterInfo(PointInfoVO vo) throws Exception {
		return dao.insertAfterInfo(vo);
	}
	
	public List<PointInfoVO> selectListInfo(PointInfoVO vo) throws Exception {
		return dao.selectListInfo(vo);
	}
	
	public int updateAfterInfo(PointInfoVO vo) throws Exception {
		return dao.updateAfterInfo(vo);
	}
}
