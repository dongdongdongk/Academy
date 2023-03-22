package com.ac.home.cart;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.ac.home.MyTestCase;

public class CartDAOTest extends MyTestCase {

	@Autowired
	private CartDAO cartDAO;
	
	@Test
	public void test() throws Exception {
		CartDTO cartDTO = new CartDTO();
		
		cartDTO.setId("wuxi2");
		cartDTO.setNum(174L);
		
		int result = cartDAO.setCartAdd(cartDTO);
		
		assertEquals(1, result);
		
	}

}
