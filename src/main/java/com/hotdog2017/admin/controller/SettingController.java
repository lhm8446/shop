package com.hotdog2017.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/setting")
public class SettingController {
		
	@RequestMapping("/menu")
	public String menuSetting(){
		return "/admin/setting/setting-menu";
	}
}
