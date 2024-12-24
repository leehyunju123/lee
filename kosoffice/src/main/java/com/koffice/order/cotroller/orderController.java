package com.koffice.order.cotroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koffice.VO.menu.MenuInfoVO;
import com.koffice.VO.order.OrderInfoVO;
import com.koffice.VO.restaurant.RestaurantInfoVO;
import com.koffice.common.service.FileService;
import com.koffice.order.service.orderService;
import com.koffice.order.vo.OrderVO;

@Controller
public class orderController {
	
	@Autowired
	orderService service;
	
	@Autowired
	FileService fileservice;

	@RequestMapping("/order/list")
		public String orderList() throws Exception {
			return "/order/order_list";
		}
	@RequestMapping("/order/detail")
	public String orderDetail() throws Exception {
		return "/order/order_detail";
	}
	
	@PostMapping("/order/search")
	@ResponseBody
	public OrderVO search(@ModelAttribute OrderInfoVO vo) throws Exception {
		//해당 데이터수를 조회 
		int totalPage = service.selectOrderCount(vo);
		
		//실제 데이터 조회 
		List<OrderInfoVO> list=service.selectOrderInfoList(vo);
		OrderVO rvo = new OrderVO();
		rvo.setOrderlist(list);
		rvo.setTotal(totalPage); //총 데이터수.
		rvo.setStartPage(vo.getStartPage()); 
		rvo.setCurrentPage(vo.getCurrentPage());//현재페이지

		return rvo;
	}
	
	@RequestMapping("/order/getOrderInfo")
	@ResponseBody
	public List<OrderInfoVO> orderinfo(@ModelAttribute OrderInfoVO vo) throws Exception {
		List<OrderInfoVO> list = service.selectOrderInfo(vo);
		return list;
	}
	
	
	
}
