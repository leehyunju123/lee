package com.koffice.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koffice.VO.member.MemberInfoVO;
import com.koffice.VO.menu.MenuInfoVO;
import com.koffice.VO.payment.PaymentInfoVO;
import com.koffice.member.dao.memberDao;

@Service
public class memberService {
	@Autowired
	memberDao dao;
	
	public int selectMemberCount(MemberInfoVO vo)throws Exception {
		return dao.selectMemberCount(vo);
	}
	
	public List<MemberInfoVO> selectMemberInfoList(MemberInfoVO vo)throws Exception {
		return dao.selectMemberInfoList(vo);
	}
	
	public MemberInfoVO selectMemberInfo(MemberInfoVO vo) throws Exception {
		return dao.selectMemberInfo(vo);
	}
	
	public int selectPointCount(MemberInfoVO vo)throws Exception {
		return dao.selectPointCount(vo);
	}
	
	public List<MemberInfoVO> selectPointInfoList(MemberInfoVO vo)throws Exception {
		return dao.selectPointInfoList(vo);
	}
	
	public int insertMemberInfo(MemberInfoVO vo) throws Exception {
		return dao.insertMemberInfo(vo);
	}
	
	public int updateMemberInfo(MemberInfoVO vo) throws Exception {
		return dao.updateMemberInfo(vo);
	}
	
	
	
}
