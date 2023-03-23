package com.ac.home.order.detail;

import java.util.Date;

public class OrderDetailDTO {
	
	private Long detailNum;
	private Long orderNum;
	private Long num;
	private Long price;
	private Date closeDate;
	private Double checks;
	
	
	public Long getDetailNum() {
		return detailNum;
	}
	public void setDetailNum(Long detailNum) {
		this.detailNum = detailNum;
	}
	public Long getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(Long orderNum) {
		this.orderNum = orderNum;
	}
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public Long getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	public Date getCloseDate() {
		return closeDate;
	}
	public void setCloseDate(Date closeDate) {
		this.closeDate = closeDate;
	}
	public Double getChecks() {
		return checks;
	}
	public void setChecks(Double checks) {
		this.checks = checks;
	}
	
	
	
	

}
