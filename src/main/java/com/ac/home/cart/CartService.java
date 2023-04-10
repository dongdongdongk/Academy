package com.ac.home.cart;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ac.home.product.ProductDTO;

import com.ac.home.member.MemberDTO;

@Service
public class CartService{
	
	@Autowired
	private CartDAO cartDAO;
	
	public List<CartDTO> getCartList() throws Exception {
		return cartDAO.getCartList();
	}
	
	public int setCartAdd(CartDTO cartDTO) throws Exception {
		return cartDAO.setCartAdd(cartDTO);
	}
	
	public int setCartDelete(CartDTO cartDTO) throws Exception {
		return cartDAO.setCartDelete(cartDTO);
	}
	
	public Long getSumPrice(CartDTO cartDTO) throws Exception {
		return cartDAO.getSumPrice(cartDTO);
	}
	
	public Long cartCheck(CartDTO cartDTO) throws Exception {
		return cartDAO.cartCheck(cartDTO);
	}
	public int getCartUpdate(CartDTO cartDTO) throws Exception {
		
		return cartDAO.getCartUpdate(cartDTO);
	}
	
	
}