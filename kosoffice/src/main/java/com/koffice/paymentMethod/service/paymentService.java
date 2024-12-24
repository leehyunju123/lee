package com.koffice.paymentMethod.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koffice.VO.payment.PaymentInfoVO;
import com.koffice.paymentMethod.dao.paymentDao;

@Service
public class paymentService {
	@Autowired
	paymentDao dao;
	
	
	public int selectPaymentCount(PaymentInfoVO vo)throws Exception {
		return dao.selectPaymentCount(vo);
	}
	
	public List<PaymentInfoVO> selectPaymentInfoList(PaymentInfoVO vo)throws Exception {
		return dao.selectPaymentInfoList(vo);
	}
	
	public PaymentInfoVO selectPaymentInfo(PaymentInfoVO vo) throws Exception {
		return dao.selectPaymentInfo(vo);
	}
	
	public int insertPaymentInfo(PaymentInfoVO vo) throws Exception {
		return dao.insertPaymentInfo(vo);
	}
	
	public int updatePaymentInfo(PaymentInfoVO vo) throws Exception {
		return dao.updatePaymentInfo(vo);
	}
}
