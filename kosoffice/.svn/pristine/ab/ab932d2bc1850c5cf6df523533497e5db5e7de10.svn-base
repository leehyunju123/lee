package com.koffice.paymentMethod.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koffice.VO.payment.PaymentInfoVO;
import com.koffice.VO.restaurant.RestaurantInfoVO;
import com.koffice.paymentMethod.VO.PaymentVO;
import com.koffice.paymentMethod.service.paymentService;

@Controller
public class paymentMethodController {
	
	@Autowired
	paymentService service;
	
	@RequestMapping("/paymentMethod/list")
	public String paymentMethodList() throws Exception {
		return "/paymentMethod/paymentMethod_list";
	}
	@RequestMapping("/paymentMethod/new")
	public String paymentMethodNew() throws Exception {
		return "/paymentMethod/paymentMethod_new";
	}
	
	@PostMapping("/payment/search")
	@ResponseBody
	public PaymentVO search(@ModelAttribute PaymentInfoVO vo) throws Exception {
		//해당 데이터수를 조회 
		int totalPage = service.selectPaymentCount(vo);
		
		//실제 데이터 조회 
		List<PaymentInfoVO> list=service.selectPaymentInfoList(vo);
		PaymentVO rvo = new PaymentVO();
		rvo.setPaymentlist(list);
		rvo.setTotal(totalPage); //총 데이터수.
		rvo.setStartPage(vo.getStartPage()); 
		rvo.setCurrentPage(vo.getCurrentPage());//현재페이지

		return rvo;
	}
	
	@RequestMapping("/payment/getpaymentInfo")
	@ResponseBody
	public PaymentInfoVO paymentinfo(@ModelAttribute PaymentInfoVO vo) throws Exception {
		vo = service.selectPaymentInfo(vo);
		return vo;
	}
	
	@PostMapping("/payment/save")
	@ResponseBody
	public boolean save(@ModelAttribute PaymentInfoVO vo) throws Exception {
		int cnt =0;
		
		if(vo.getInsType().equals("I")) {
			cnt = service.insertPaymentInfo(vo);
		}else {
			cnt = service.updatePaymentInfo(vo);
		}
		if(cnt>0) {
			return true;
		}else {	
			return false;
		}
	}
	}

