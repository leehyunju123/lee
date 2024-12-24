package com.koffice.manager.cotroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koffice.VO.manager.ManagerInfoVO;
import com.koffice.VO.member.MemberInfoVO;
import com.koffice.VO.menu.MenuInfoVO;
import com.koffice.manager.service.managerService;
import com.koffice.manager.vo.ManagerVO;

@Controller
public class managerController {
	
	@Autowired
	managerService service;
	
	@RequestMapping("/manager/loginpg")
	public String managerLoginPg() throws Exception {
		return "/manager/manager_loginpg";
	}
	@RequestMapping("/manager/list")
	public String managerList() throws Exception {
		return "/manager/manager_list";
	}
	@RequestMapping("/manager/reg")
	public String managerReg() throws Exception {
		return "/manager/manager_reg";
	}
	
	@PostMapping("/manager/search")
	@ResponseBody
	public ManagerVO search(@ModelAttribute ManagerInfoVO vo) throws Exception {
		//해당 데이터수를 조회 
		int totalPage = service.selectManagerCount(vo);
		
		//실제 데이터 조회 
		List<ManagerInfoVO> list=service.selectManagerInfoList(vo);
		ManagerVO rvo = new ManagerVO();
		rvo.setManagerlist(list);
		rvo.setTotal(totalPage); //총 데이터수.
		rvo.setStartPage(vo.getStartPage()); 
		rvo.setCurrentPage(vo.getCurrentPage());//현재페이지

		return rvo;
	}
	
	@RequestMapping("/manager/getManagerInfo")
	@ResponseBody
	public ManagerInfoVO managerinfo(@ModelAttribute ManagerInfoVO vo) throws Exception {
		vo = service.selectManagerInfo(vo);
		return vo;
	}

	@PostMapping("/manager/save")
	@ResponseBody
	public boolean save(@ModelAttribute ManagerInfoVO vo) throws Exception {
		int cnt =0;
		
		if(vo.getInsType().equals("I")) {
			cnt = service.insertManagerInfo(vo);
		}else {
			cnt = service.updateManagerInfo(vo);
		}
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
}
