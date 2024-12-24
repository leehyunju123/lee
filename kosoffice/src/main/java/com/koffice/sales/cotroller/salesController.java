package com.koffice.sales.cotroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koffice.VO.menu.MenuInfoVO;
import com.koffice.VO.restaurant.RestaurantInfoVO;
import com.koffice.VO.sales.SalesInfoVO;
import com.koffice.sales.VO.SalesVO;
import com.koffice.sales.service.salesService;

@Controller
public class salesController {
	
	@Autowired
	salesService service;
	
	@RequestMapping("/sales/list")
	public String salesList() throws Exception {
		return "/sales/sales_list";
	}
	@RequestMapping("/sales/price")
	public String salesPrice() throws Exception {
		return "/sales/sales_price";
	}
	
	@PostMapping("/sales/search")
	@ResponseBody
	public SalesVO search(@ModelAttribute SalesInfoVO vo) throws Exception {
		//해당 데이터수를 조회 
		int totalPage = service.selectSalesCount(vo);
		
		//실제 데이터 조회 
		List<SalesInfoVO> list=service.selectSalesInfoList(vo);
		SalesVO rvo = new SalesVO();
		rvo.setSaleslist(list);
		rvo.setTotal(totalPage); //총 데이터수.
		rvo.setStartPage(vo.getStartPage()); 
		rvo.setCurrentPage(vo.getCurrentPage());//현재페이지

		return rvo;
	}
	
	
	@PostMapping("/sales/getSalesInfo")
	@ResponseBody
	public SalesVO getSalesInfo(@ModelAttribute SalesInfoVO vo) throws Exception {
		//해당 데이터수를 조회 
		int totalPage = service.selectSalesCount(vo);
		
		//실제 데이터 조회 
		List<SalesInfoVO> list=service.selectSalesInfo(vo);
		SalesVO rvo = new SalesVO();
		rvo.setSaleslist(list);
		rvo.setTotal(totalPage); //총 데이터수.
		rvo.setStartPage(vo.getStartPage()); 
		rvo.setCurrentPage(vo.getCurrentPage());//현재페이지

		return rvo;
	}

}
