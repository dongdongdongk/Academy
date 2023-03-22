package com.ac.home.cart;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ac.home.member.MemberDTO;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value = "/cart/{productId}")
	public @ResponseBody String addGoodsInCart(@PathVariable("num") Long num, HttpSession session) {
		
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("login");
		String id = memberDTO.getId();
		/* 로그인 되어있는 정보를 이용해서 userid를 가져온다 */
		CartDTO cartDTO = new CartDTO();
		/* cart객체를 생성하고*/
		cartDTO.setId(id);
		cartDTO.setNum(num);
		/* 객체 안에 userid와 productId를 set해준다 */

		boolean istAlreadyExisted = cartService.findCartGoods(cartDTO);
        /* 이미 해당 상품이 카트에 존재하는지 여부를 판별해주는 메서드 */
		System.out.println("istAlreadyExisted : " + istAlreadyExisted);
		
		if (istAlreadyExisted) {
			return "already_existed";
            /* 만약 이미 카트에 저장되어있다면, already_existed를 리턴 */
		} else {
            cartService.addGoodsInCart(cartDTO);
			return "add_success";
             /* 카트에 없으면 카트에 저장 후, add_success를 리턴  */
		}
	}
}
