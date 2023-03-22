package com.ac.home.cart;

import java.io.Serializable;

public class CartDTO implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private Long cartNum;
	private String id;
	private Long num;
	
	public CartDTO() {
		
	}

	public CartDTO(String id, Long num, Long cartNum) {
		super();
		this.id = id;
		this.num = num;
		this.cartNum = cartNum;
		
	}

	public Long getCartNum() {
		return cartNum;
	}
	public void setCartNum(Long cartNum) {
		this.cartNum = cartNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = (int)(prime * result + cartNum);
		
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CartDTO other = (CartDTO) obj;
		if (cartNum != other.cartNum)
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "CartDTO [id=" + id + ", productId=" + num + ", cartId=" + cartNum + "]";
	}
}
