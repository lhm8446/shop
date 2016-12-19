package com.hotdog2017.admin.vo;

public class ProductInfoVo {
	private Long no;
	private String pcolor;
	private String psize;
	
	public Long getNo() {
		return no;
	}
	public void setNo(Long no) {
		this.no = no;
	}
	public String getPcolor() {
		return pcolor;
	}
	public void setPcolor(String pcolor) {
		this.pcolor = pcolor;
	}
	public String getPsize() {
		return psize;
	}
	public void setPsize(String psize) {
		this.psize = psize;
	}
	@Override
	public String toString() {
		return "ProductInfoVo [no=" + no + ", pcolor=" + pcolor + ", psize=" + psize + "]";
	}
}
