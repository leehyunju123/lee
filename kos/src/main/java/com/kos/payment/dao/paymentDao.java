package com.kos.payment.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.kos.vo.PointInfoVO;

@Repository
public interface paymentDao {

	
	public PointInfoVO selectPaymentInfo(PointInfoVO vo) throws Exception ;
	
	public List<PointInfoVO> selectPaymentInfos(PointInfoVO vo) throws Exception;
	
	public List<PointInfoVO> selectOrderInfo(PointInfoVO vo) throws Exception;
	
	public int updatePointInfo(PointInfoVO vo) throws Exception;
	
	public List<PointInfoVO> selectListInfo(PointInfoVO vo) throws Exception;
	
	public int insertAfterInfo(PointInfoVO vo) throws Exception;
	
	public int updateAfterInfo(PointInfoVO vo) throws Exception;
}
