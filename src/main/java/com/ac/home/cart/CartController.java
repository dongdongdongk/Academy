package com.ac.home.cart;

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
	
	@Autowired
	private ProductService productService;
	
	@GetMapping(value = "cartList")
	public ModelAndView getCartList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<CartDTO> ar = cartService.getCartList();
		
		// --------------------------------
		List<ProductDTO> items = productService.getProductList(pager);
		
		Long totalPrice = 0L;
        for (ProductDTO productDTO : items) {
            Long price = productDTO.getPrice();
            totalPrice += price;
        }
		
        mv.addObject("totalPrice", totalPrice);
        
        // --------------------------------
        
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
	
	
}
