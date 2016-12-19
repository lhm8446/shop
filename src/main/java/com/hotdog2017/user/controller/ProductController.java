package com.hotdog2017.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotdog2017.admin.service.CategoryService;
import com.hotdog2017.admin.service.ProductService;
import com.hotdog2017.admin.vo.CategoryVo;
import com.hotdog2017.admin.vo.ProductVo;

@Controller("userProductController")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categortService;
	
	@RequestMapping("/{no}")
	public String product(@PathVariable(value="no")Long category_no, Model model){
		List<CategoryVo> list = categortService.getCategory();
		List<ProductVo> productList = productService.getProduct(category_no);
		
		model.addAttribute("list", list);
		model.addAttribute("plist", productList);
		
		return "/user/product/product";
	}
}
