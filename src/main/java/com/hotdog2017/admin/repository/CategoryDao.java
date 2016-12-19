package com.hotdog2017.admin.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hotdog2017.admin.vo.CategoryVo;

@Repository
public class CategoryDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public Long insertCategory(CategoryVo categoryVo){
		sqlSession.insert("category.insertCategory",categoryVo);
		return categoryVo.getNo();
	}
	
	public List<CategoryVo> getCategory(){
		return sqlSession.selectList("category.getCategory");
	}
	
	public CategoryVo getCategory(Long categoryNo){
		return sqlSession.selectOne("category.getOneCategory",categoryNo);
	}
	
	public int delCategory(Long categoryNo){
		return sqlSession.delete("category.delCategory",categoryNo);
	}
	
	public int editCategory(Long categoryNo, String categoryTitle){
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("title", categoryTitle);
		map.put("no", categoryNo);

		return sqlSession.update("category.editCategory", map);
	}
	
}
