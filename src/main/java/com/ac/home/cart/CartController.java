package com.ac.home.cart;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ac.home.member.MemberDTO;
import com.ac.home.product.ProductDTO;
import com.ac.home.product.ProductService;
import com.ac.home.util.Pager;

@Controller
@RequestMapping(value = "/cart/*")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@GetMapping(value = "cartList")
	public ModelAndView getCartList(CartDTO cartDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<CartDTO> ar = cartService.getCartList();
		
		Long sumPrice = 0L;
		if(cartDTO.getId() != null) {
			sumPrice = cartService.getSumPrice(cartDTO);				
		}
		
		mv.addObject("sumPrice", sumPrice);
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
		
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	@PostMapping("cartUpdate")
	public ModelAndView getCartUpdate(CartDTO cartDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = cartService.getCartUpdate(cartDTO);
		
		/*
		 * List<CartDTO> ar = cartService.getCartList();
		 * 
		 * Long getSubPrice = 0L; if(cartDTO.getId() != null) { getSubPrice =
		 * cartService.getSumPrice(cartDTO); }
		 * 
		 * mv.addObject("subPrice", getSubPrice); mv.addObject("list", ar);
		 * mv.setViewName("cart/cartList");
		 */
		
		mv.addObject("result", result);
		mv.addObject("dto", result);
		mv.setViewName("/common/ajaxResult");

		return mv;
		
	}

	
	
}
