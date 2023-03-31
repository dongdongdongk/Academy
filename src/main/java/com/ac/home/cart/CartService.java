package com.ac.home.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ac.home.member.MemberDTO;
import com.ac.home.member.paymentmethod.PaymentMethodDTO;

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
	
    public MemberDTO getMemberCart(String memberId) throws Exception {
        return cartDAO.getMemberCart(memberId);
    }
    
    public List<PaymentMethodDTO> getPaymentMethods(String memberId) throws Exception {
        return cartDAO.getPaymentMethods(memberId);
    }
}
