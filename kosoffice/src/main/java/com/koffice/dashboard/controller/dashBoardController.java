package com.koffice.dashboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class dashBoardController {

	@RequestMapping("/dashboard")
	public String dashboard() throws Exception {
		return "/dashboard/dashboard";
	}

}
