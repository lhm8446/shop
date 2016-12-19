package com.hotdog2017.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/ha")
	public String index(){
		return "/admin/main/index";
	}
	
	@RequestMapping("/main")
	public String main(){
		return "/admin/main/index";
	}
}
