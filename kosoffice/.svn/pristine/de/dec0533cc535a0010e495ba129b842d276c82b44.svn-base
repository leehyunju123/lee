package com.koffice.member.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.koffice.VO.member.MemberInfoVO;


@Repository
public interface memberDao {
	
	public int selectMemberCount(MemberInfoVO vo)throws Exception;
	
	public List<MemberInfoVO> selectMemberInfoList(MemberInfoVO vo)throws Exception;
	
	public MemberInfoVO selectMemberInfo(MemberInfoVO vo) throws Exception;
	
	public int selectPointCount(MemberInfoVO vo)throws Exception;

	public List<MemberInfoVO> selectPointInfoList(MemberInfoVO vo)throws Exception;
	
	public int updateMemberInfo(MemberInfoVO vo) throws Exception;
	
	public int insertMemberInfo(MemberInfoVO vo) throws Exception;
}
