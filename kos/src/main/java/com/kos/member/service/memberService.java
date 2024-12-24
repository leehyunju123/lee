package com.kos.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kos.member.dao.memberDao;
import com.kos.vo.MemberInfoVO;

@Service
public class memberService {

	@Autowired
	memberDao dao;
	
	public MemberInfoVO selectPointInfo(MemberInfoVO vo) throws Exception {
		return dao.selectPointInfo(vo);
	}
	
	public int updatePointInfo(MemberInfoVO vo) throws Exception {
		return dao.updatePointInfo(vo);
	}
	
	public int insertMemberInfo(MemberInfoVO vo) throws Exception {
		return dao.insertMemberInfo(vo);
	}
	
	public int selectMemberPointCount(MemberInfoVO vo)throws Exception {
		return dao.selectMemberPointCount(vo);
	}
}
