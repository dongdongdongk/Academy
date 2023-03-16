package com.ac.home.orders;

import java.util.Date;

public class OrdersDTO {
	
	private Long orderNum;
	private String id;
	private String name;
	private Long allPrice;
	private Long finalPrice;
	private String phone;
	private String email;
	private	String state;
	private Date refundDate;
	private Long refundAmount;
	private Long refundFee;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Date getRefundDate() {
		return refundDate;
	}
	public void setRefundDate(Date refundDate) {
		this.refundDate = refundDate;
	}
	public Long getRefundAmount() {
		return refundAmount;
	}
	public void setRefundAmount(Long refundAmount) {
		this.refundAmount = refundAmount;
	}
	public Long getRefundFee() {
		return refundFee;
	}
	public void setRefundFee(Long refundFee) {
		this.refundFee = refundFee;
	}
	public Date getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	
	
	

}
