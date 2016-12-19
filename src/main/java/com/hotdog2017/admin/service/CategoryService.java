package com.hotdog2017.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotdog2017.admin.repository.CategoryDao;
import com.hotdog2017.admin.vo.CategoryVo;

@Service
public class CategoryService {

	@Autowired
	private CategoryDao categoryDao;
	
	public Long insertCategory(CategoryVo categoryVo){
		return categoryDao.insertCategory(categoryVo);
	}
	
	public List<CategoryVo> getCategory(){
		return categoryDao.getCategory();
	}
	
	public CategoryVo getCategory(Long categoryNo){
		return categoryDao.getCategory(categoryNo);
	}
	
	public boolean delCategory(Long categoryNo){
		int correct = categoryDao.delCategory(categoryNo);
		return correct == 1;
	}
	
	public boolean editCategory(Long categoryNo, String categoryTitle){
		int correct = categoryDao.editCategory(categoryNo,categoryTitle);
		return correct == 1;
	}
	
	
}
