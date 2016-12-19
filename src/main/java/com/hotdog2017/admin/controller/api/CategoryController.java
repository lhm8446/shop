package com.hotdog2017.admin.controller.api;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hotdog2017.admin.service.CategoryService;
import com.hotdog2017.admin.vo.CategoryVo;

@Controller
@RequestMapping("/api")
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	@ResponseBody
	@RequestMapping("/getcategory")
	public Object getCategory(){
		
		List<CategoryVo> list = categoryService.getCategory();
		
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("result", "success");
		map.put("data", list);
		
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="/addcategory", method=RequestMethod.POST)
	public Object addCategory(@RequestParam(value="title", required=true, defaultValue="") String title){
		
		CategoryVo categoryVo = new CategoryVo();
		categoryVo.setTitle(title);
		
		Long no = categoryService.insertCategory(categoryVo);
		
		CategoryVo vo = categoryService.getCategory(no);
				
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("result", "success");
		map.put("data",vo);
		
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="/delcategory")
	public Object delCategory(@RequestParam(value="no")Long no){
		
		boolean result = categoryService.delCategory(no);
		
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("result", result);
		
		return map;
	}
	
	@ResponseBody
	@RequestMapping("/editcategory")
	public Object editCategory(@RequestParam(value="no")Long no, 
							   @RequestParam(value="title")String title){
					
		boolean result = categoryService.editCategory(no,title);
		
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("result", result);
		
		return map;
	}
}
