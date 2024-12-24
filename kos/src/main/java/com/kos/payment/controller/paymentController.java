package com.kos.payment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kos.payment.service.paymentService;
import com.kos.vo.OrderInfoVO;
import com.kos.vo.PointInfoVO;

@Controller
public class paymentController {
	
	@Autowired
	paymentService service;
	
	@RequestMapping("/paymentmethod/creditcard")
	public String creditcard(@ModelAttribute OrderInfoVO vo, Model model) throws Exception {
		model.addAttribute("orderNo", vo.getOrderNo());
		return "/paymentmethod/creditcard";
	}
	
	@RequestMapping("/paymentmethod/paying")
	public String paying(@ModelAttribute OrderInfoVO vo, Model model) throws Exception {
		model.addAttribute("orderNo", vo.getOrderNo());
		return "/paymentmethod/paying";
	}
	@RequestMapping("/paymentmethod/point")
	public String point(@ModelAttribute OrderInfoVO vo, Model model) throws Exception {
		model.addAttribute("orderNo", vo.getOrderNo());
		return "/paymentmethod/point";
	}
	@RequestMapping("/paymentmethod/complete")
	public String complete(@ModelAttribute OrderInfoVO vo, Model model) throws Exception {
		model.addAttribute("orderNo", vo.getOrderNo());
		return "/paymentmethod/complete";
	}
	@RequestMapping("/paymentmethod/receipt")
	public String receipt(@ModelAttribute OrderInfoVO vo, Model model) throws Exception {
		model.addAttribute("orderNo", vo.getOrderNo());
		return "/paymentmethod/receipt";
	}
	
	@RequestMapping("/payment/Point")
	@ResponseBody
	public PointInfoVO paymentinfo(@ModelAttribute PointInfoVO vo) throws Exception {
		vo = service.selectPaymentInfo(vo);
		return vo;
	}
	
	@RequestMapping("/payment/payment")
	@ResponseBody
	public List<PointInfoVO> paymentsinfo(@ModelAttribute PointInfoVO vo) throws Exception {
		List<PointInfoVO> list = service.selectPaymentInfos(vo);
		return list;
	}
	
	@RequestMapping("/payment/getOrderInfo")
	@ResponseBody
	public List<PointInfoVO> Orderinfo(@ModelAttribute PointInfoVO vo) throws Exception {
		List<PointInfoVO> list = service.selectOrderInfo(vo);
		return list;
	}
	
	@PostMapping("/payment/pointsave")
	@ResponseBody
	public boolean save(@ModelAttribute PointInfoVO vo) throws Exception {
	
			int cnt = service.updatePointInfo(vo);
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	
	@PostMapping("/payment/afterPoint")
	@ResponseBody
	public boolean point(@ModelAttribute PointInfoVO vo) throws Exception {
	
			int cnt = service.insertAfterInfo(vo);
			int cnt2 = service.updateAfterInfo(vo);
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	
	@RequestMapping("/payment/getListInfo")
	@ResponseBody
	public List<PointInfoVO> Listinfo(@ModelAttribute PointInfoVO vo) throws Exception {
		List<PointInfoVO> list = service.selectListInfo(vo);
		return list;
	}
	

}
