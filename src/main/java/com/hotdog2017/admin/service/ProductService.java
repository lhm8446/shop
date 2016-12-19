package com.hotdog2017.admin.service;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hotdog2017.admin.repository.ProductDao;
import com.hotdog2017.admin.vo.ProductVo;

@Service
public class ProductService {
	
	private static final String SAVE_PATH = "/upload";
	private static final String URL = "/gallery/assets/";
	
	@Autowired
	private ProductDao productDao;
	
	//유저 모드 상품 가져오기
	public List<ProductVo> getProduct(Long category_no){
		return productDao.getProduct(category_no);
	}
	
	// 관리자모드 상품 목록 가져오기
	public List<ProductVo> getProduct(){
		return productDao.getProduct();
	}
	public void insertProduct(MultipartFile mainMultipartFile,
								MultipartFile subMultipartFile,
								ProductVo productVo){
		
		try{
			
		if(mainMultipartFile.isEmpty()==true){
			return;
		}
		
		String originalFileName = mainMultipartFile.getOriginalFilename();
		String extName = originalFileName.substring(originalFileName.lastIndexOf('.')+1, originalFileName.length());
		String saveFileName = generateSaveFileName(extName);
		//Long fileSize = multipartFile.getSize();
		
		String originalFileName2 = subMultipartFile.getOriginalFilename();
		String extName2 = originalFileName2.substring(originalFileName2.lastIndexOf('.')+1, originalFileName2.length());
		String saveFileName2 = generateSaveFileName2(extName2);
		
		//파일 쓰기 
		wirteFile(mainMultipartFile,saveFileName);
		wirteFile(subMultipartFile,saveFileName2);
		
		productVo.setMain_photo(saveFileName);
		productVo.setSub_photo(saveFileName2);		
		
		System.out.println(productVo);
		
		productDao.insertProduct(productVo);

		
		}catch(IOException e){
		//	throw new UploadFileException("write file");
		//  log 남기기
			throw new RuntimeException("upload file");
		}
	}
	
	private void wirteFile(MultipartFile multipartFile, String saveFileName)throws IOException{
		byte[] fileData = multipartFile.getBytes();
		FileOutputStream fos = new FileOutputStream(SAVE_PATH + "/" + saveFileName);
		fos.write(fileData);
		fos.close();
	}
	private String generateSaveFileName(String extName){
		String fileName = "";
		Calendar calendar = Calendar.getInstance();
		fileName += calendar.get(Calendar.YEAR);
		fileName += calendar.get(Calendar.MONTH)+1;
		fileName += calendar.get(Calendar.DATE);
		fileName += calendar.get(Calendar.HOUR);
		fileName += calendar.get(Calendar.MINUTE);
		fileName += calendar.get(Calendar.SECOND);
		fileName += calendar.get(Calendar.MILLISECOND);
		fileName += ("."+extName);
		
		return fileName;
	}
	
	private String generateSaveFileName2(String extName){
		String fileName = "s";
		Calendar calendar = Calendar.getInstance();
		fileName += calendar.get(Calendar.YEAR);
		fileName += calendar.get(Calendar.MONTH)+1;
		fileName += calendar.get(Calendar.DATE);
		fileName += calendar.get(Calendar.HOUR);
		fileName += calendar.get(Calendar.MINUTE);
		fileName += calendar.get(Calendar.SECOND);
		fileName += calendar.get(Calendar.MILLISECOND);
		fileName += ("."+extName);
		
		return fileName;
	}



}
