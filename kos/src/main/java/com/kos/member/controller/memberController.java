package com.kos.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kos.member.service.memberService;
import com.kos.vo.MemberInfoVO;


@Controller
public class memberController {
	
	@Autowired
	memberService service;

	@RequestMapping("/member/password")
	public String memberPwd() throws Exception {
		return "/member/password";
	}
	
	@RequestMapping("/member/earnpoint")
	public String earnPoint(@ModelAttribute MemberInfoVO vo, Model model) throws Exception {
		model.addAttribute("orderNo", vo.getOrderNo());
		return "/member/earnpoint";
	}
	@RequestMapping("/member/reg")
	public String reg() throws Exception {
		return "/member/reg";
	}
	@RequestMapping("/member/join")
	public String join() throws Exception {
		return "/member/join";
	}

	@RequestMapping("/member/point")
	@ResponseBody
	public MemberInfoVO memberinfo(@ModelAttribute MemberInfoVO vo) throws Exception {
		vo = service.selectPointInfo(vo);
		return vo;
	}
	

	/*
	@PostMapping("/member/savePoint")
	@ResponseBody
	public boolean save(@ModelAttribute MemberInfoVO vo) throws Exception {
	
			int cnt = service.updatePointInfo(vo);
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	*/
	
	@PostMapping("/member/savePoint")
	@ResponseBody
	public boolean save(@ModelAttribute MemberInfoVO vo) throws Exception {
	
		int cnt =0;
		
		int c = service.selectMemberPointCount(vo);
		
		if(c==0 ) {  //없는 전화번호 
			cnt = service.insertMemberInfo(vo);
		} else {  // 있는 전화번호 
			cnt = service.updatePointInfo(vo);
		}
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	
	@GetMapping("/api/data")
	@ResponseBody
	public String test() {
		System.out.println("Call Server");
		return "Hello, world!!!!!";
	}
}

