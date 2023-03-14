package com.ac.home.product;

import java.util.Date;

public class ProductDTO {
	
	private Long num;
	private String title;
	private Long price;
	private Long saleQty;
	private String info;
	private Date regDate;
	private Double grade;
	
	
	
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Long getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	public Long getSaleQty() {
		return saleQty;
	}
	public void setSaleQty(Long saleQty) {
		this.saleQty = saleQty;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Double getGrade() {
		return grade;
	}
	public void setGrade(Double grade) {
		this.grade = grade;
	}
	
	
	
	
	
	

}
