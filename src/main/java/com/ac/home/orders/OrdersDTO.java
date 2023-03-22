package com.ac.home.orders;

import java.util.Date;

public class OrdersDTO {
	
	private Long orderNum;
	private String id;
	private Long allPrice;
	private Long finalPrice;
	private	String state;
	private Date purchaseDate;
	
	public Long getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(Long orderNum) {
		this.orderNum = orderNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Long getAllPrice() {
		return allPrice;
	}
	public void setAllPrice(Long allPrice) {
		this.allPrice = allPrice;
	}
	public Long getFinalPrice() {
		return finalPrice;
	}
	public void setFinalPrice(Long finalPrice) {
		this.finalPrice = finalPrice;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Date getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	
	
	
	
	
	
	

}
