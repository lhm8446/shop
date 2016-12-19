package com.hotdog2017.admin.vo;

public class ProductVo {
	
	private Long no;
	private String name;
	private String main_photo;
	private String main_des;
	private Long price;
	private String sub_photo;
	private String sub_des;
	private String reg_date;
	private Long category_no;
	private String title;
	
	public Long getNo() {
		return no;
	}
	public void setNo(Long no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMain_photo() {
		return main_photo;
	}
	public void setMain_photo(String main_photo) {
		this.main_photo = main_photo;
	}
	public String getMain_des() {
		return main_des;
	}
	public void setMain_des(String main_des) {
		this.main_des = main_des;
	}
	public Long getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	public String getSub_photo() {
		return sub_photo;
	}
	public void setSub_photo(String sub_photo) {
		this.sub_photo = sub_photo;
	}
	public String getSub_des() {
		return sub_des;
	}
	public void setSub_des(String sub_des) {
		this.sub_des = sub_des;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public Long getCategory_no() {
		return category_no;
	}
	public void setCategory_no(Long category_no) {
		this.category_no = category_no;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {;
		this.title = title;
	}
	@Override
	public String toString() {
		return "ProductVo [no=" + no + ", name=" + name + ", main_photo=" + main_photo + ", main_des=" + main_des
				+ ", price=" + price + ", sub_photo=" + sub_photo + ", sub_des=" + sub_des + ", reg_date=" + reg_date
				+ ", category_no=" + category_no + ", title=" + title + "]";
	}
}
