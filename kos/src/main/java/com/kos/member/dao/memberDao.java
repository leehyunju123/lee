package com.kos.member.dao;

import org.springframework.stereotype.Repository;

import com.kos.vo.MemberInfoVO;

@Repository
public interface memberDao {

	
	public MemberInfoVO selectPointInfo(MemberInfoVO vo) throws Exception;
	
	public int updatePointInfo(MemberInfoVO vo) throws Exception;
	
	public int selectMemberPointCount(MemberInfoVO vo)throws Exception;
	
	public int insertMemberInfo(MemberInfoVO vo) throws Exception ;
}
