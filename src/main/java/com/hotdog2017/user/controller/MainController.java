package com.hotdog2017.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotdog2017.admin.service.CategoryService;
import com.hotdog2017.admin.vo.CategoryVo;

@Controller("userController")
public class MainController {
	
	@Autowired
	private CategoryService categoryService;
	
	// 쇼핑몰 메인
	@RequestMapping("")
	public String main(Model model){
		
		// 카테고리 이름 가져오기 
		List<CategoryVo> list = categoryService.getCategory();
		
		model.addAttribute("list",list);
		
		return "/user/main/main";
	}
}
