package com.hotdog2017.admin.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hotdog2017.admin.vo.ProductVo;

@Repository
public class ProductDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 상품 등록
	public void insertProduct(ProductVo productVo){
		sqlSession.insert("product.insertProduct", productVo);
	}
	
	// 관리자 모드 상품 목록 가져오기
	public List<ProductVo> getProduct(){
		return sqlSession.selectList("product.getProductAdmin");
	}
	
	// 유저모드 상품 가져오기 
	public List<ProductVo> getProduct(Long category_no){
		return sqlSession.selectList("product.getProduct",category_no);
	}
}
