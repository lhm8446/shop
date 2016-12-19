package com.hotdog2017.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.hotdog2017.admin.service.CategoryService;
import com.hotdog2017.admin.service.ProductService;
import com.hotdog2017.admin.vo.CategoryVo;
import com.hotdog2017.admin.vo.ProductVo;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ProductService productService;
	
	
	// 상품 관리 화면 ( 상품 목록 출력)
	@RequestMapping(value="/product-admin")
	public String productAdmin(Model model){
		
		// 등록된 상품 목록 가져오기
		List<ProductVo> list = productService.getProduct();
		
		model.addAttribute("list", list);
		
		return "/admin/product/product-admin";
	}
	
	
	// 상품 등록 화면
	@RequestMapping(value="/product-reg")
	public String productReg(Model model){
		
		// 설정된 카테고리 목록 가져오기
		List<CategoryVo> list = categoryService.getCategory();
		
		model.addAttribute("list", list);
		
		return "/admin/product/product-reg";
	}
	
	// 상품 등록
	@RequestMapping(value="/submit", method=RequestMethod.POST)
	public String insertProduct(@RequestParam(value="photo1")MultipartFile main,
							    @RequestParam(value="photo2")MultipartFile sub,
							    ProductVo productVo){
		
		// 입력된 상품정보와 메인사진, 서브사진 쓰기
		productService.insertProduct(main, sub, productVo);
		
		return "redirect:/product/product-admin";
	}
}
