package com.kos.order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kos.order.service.orderService;
import com.kos.vo.OrderInfoVO;

@Controller
public class orderController {
	
	@Autowired
	orderService service;
	
	@RequestMapping("/order/list")
	public String orderList(@ModelAttribute OrderInfoVO vo, Model model) throws Exception {
		model.addAttribute("orderNo", vo.getOrderNo());
		return "/order/order_list";
	}
	
	
	@RequestMapping("/order/save")
	@ResponseBody
	public String ordersave(@ModelAttribute OrderInfoVO vo) throws Exception {
		
		//1. Order No 생성 
		String orderNo = service.selectMaxOrderNo();
		vo.setOrderNo(orderNo);
		
		//2. 식당별 주문정보 등록.
		int c = service.insertRestaurantOrderInfo(vo);
		if(c>0) {
			
			//3. 식당의 주문메뉴 등록.
			for(int i=0;i<vo.getOrderlist().size();i++) {
				vo.getOrderlist().get(i).setOrderNo(vo.getOrderNo());
				
				service.insertRestaurantOrderMenu(vo.getOrderlist().get(i));
			}
			
			//4. 주문마스터 정보 등록.
		    service.insertOrderInfo(vo);
		    
		}
		return orderNo;
	}
	
	@RequestMapping("/order/payment")
	public String payment(@ModelAttribute OrderInfoVO vo, Model model) throws Exception {
		model.addAttribute("orderNo", vo.getOrderNo());
		return "/order/payment";
	}
	
	@RequestMapping("/order/getOrderInfo")
	@ResponseBody
	public List<OrderInfoVO> orderinfo(@ModelAttribute OrderInfoVO vo) throws Exception {
		List<OrderInfoVO> list = service.selectOrderInfo(vo);
		return list;
	}

}
