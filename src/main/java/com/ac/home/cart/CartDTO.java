package com.ac.home.cart;

import java.util.List;

import com.ac.home.product.ProductDTO;
import com.ac.home.product.ProductImgDTO;

public class CartDTO {
	private Long cartNum;
	private String id;
	private Long num;
	private List<ProductDTO> productDTOs;
	private List<ProductImgDTO> productImgDTOs;
	
	private Long quantity;
	
	public Long getQuantity() {
		return quantity;
	}
	public void setQuantity(Long quantity) {
		this.quantity = quantity;
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
	public List<ProductDTO> getProductDTOs() {
		return productDTOs;
	}
	public void setProductDTOs(List<ProductDTO> productDTOs) {
		this.productDTOs = productDTOs;
	}
	public List<ProductImgDTO> getProductImgDTOs() {
		return productImgDTOs;
	}
	public void setProductImgDTOs(List<ProductImgDTO> productImgDTOs) {
		this.productImgDTOs = productImgDTOs;
	}
}
