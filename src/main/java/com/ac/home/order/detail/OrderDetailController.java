package com.ac.home.order.detail;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ac.home.util.Pager;

@Controller
@RequestMapping(value = "/orderDetail/*")
public class OrderDetailController {
	
	@Autowired
	private OrderDetailService ordersDetailService;
	
	
	@GetMapping(value = "orderDetailList")
	public ModelAndView getOrderDetailList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<OrderDetailDTO> ar = ordersDetailService.getOrderDetailList(pager);
		
		mv.addObject("list", ar);
		mv.setViewName("orderDetail/orderDetailList");
		
		return mv;
	}

}
