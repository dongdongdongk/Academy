package com.ac.home.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ac.home.member.MemberDTO;

@Controller
@RequestMapping(value = "/cart/*")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@GetMapping(value = "cartList")
	public ModelAndView getCartList() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<CartDTO> ar = cartService.getCartList();
		
		mv.addObject("list", ar);
		mv.setViewName("cart/cartList");
		
		return mv;
	}
	
	@PostMapping(value = "cartAdd")
	public ModelAndView setCartAdd(CartDTO cartDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = cartService.setCartAdd(cartDTO);
		
		mv.setViewName("redirect:./cartList");
		
		return mv;
	}
	
	@PostMapping(value = "cartDelete")
	public ModelAndView setCartDelete(CartDTO cartDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = cartService.setCartDelete(cartDTO);
		
		mv.setViewName("redirect:./cartList");
		
		return mv;
	}
}
