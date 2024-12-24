package com.koffice.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koffice.VO.member.MemberInfoVO;
import com.koffice.VO.menu.MenuInfoVO;
import com.koffice.member.VO.MemberVO;
import com.koffice.member.service.memberService;

@Controller
public class memberController {
	@Autowired
	memberService service;
	
	@RequestMapping("/member/list")
	public String memberList() throws Exception {
		return "/member/member_list";
	}
	@RequestMapping("/member/reg")
	public String memberReg() throws Exception {
		return "/member/member_reg";
	}
	@RequestMapping("/member/info")
	public String memberInfo() throws Exception {
		return "/member/member_info";
	}
	
	@PostMapping("/member/search")
	@ResponseBody
	public MemberVO search(@ModelAttribute MemberInfoVO vo) throws Exception {
		//해당 데이터수를 조회 
		int totalPage = service.selectMemberCount(vo);
		
		//실제 데이터 조회 
		List<MemberInfoVO> list=service.selectMemberInfoList(vo);
		MemberVO rvo = new MemberVO();
		rvo.setMemberlist(list);
		rvo.setTotal(totalPage); //총 데이터수.
		rvo.setStartPage(vo.getStartPage()); 
		rvo.setCurrentPage(vo.getCurrentPage());//현재페이지

		return rvo;
	}
	
	@RequestMapping("/member/getMemberInfo")
	@ResponseBody
	public MemberInfoVO memberinfo(@ModelAttribute MemberInfoVO vo) throws Exception {
		vo = service.selectMemberInfo(vo);
		return vo;
	}
	
	@PostMapping("/member/search2")
	@ResponseBody
	public MemberVO search2(@ModelAttribute MemberInfoVO vo) throws Exception {
		//해당 데이터수를 조회 
		int totalPage = service.selectPointCount(vo);
		
		//실제 데이터 조회 
		List<MemberInfoVO> list=service.selectPointInfoList(vo);
		MemberVO rvo = new MemberVO();
		rvo.setMemberlist(list);
		rvo.setTotal(totalPage); //총 데이터수.
		rvo.setStartPage(vo.getStartPage()); 
		rvo.setCurrentPage(vo.getCurrentPage());//현재페이지

		return rvo;
	}
	
	@PostMapping("/member/save")
	@ResponseBody
	public boolean save(@ModelAttribute MemberInfoVO vo) throws Exception {
		
		int cnt =0;		
		
		if(vo.getInsType().equals("I")) {
			cnt = service.insertMemberInfo(vo);
		}else {
			cnt = service.updateMemberInfo(vo);
		}
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
}

