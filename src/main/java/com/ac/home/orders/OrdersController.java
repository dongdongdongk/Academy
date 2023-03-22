package com.ac.home.orders;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.ac.home.util.Pager;
@Controller
@RequestMapping(value = "/orders/*")
public class OrdersController {


		@Autowired
		private OrdersService ordersService;
		
		@GetMapping(value = "ordersList")
		public ModelAndView getQrdersList(Pager pager) throws Exception {
			ModelAndView mv = new ModelAndView();
			
			List<OrdersDTO> ar = ordersService.getOrdersList(pager);
			
			mv.addObject("list", ar);
			mv.setViewName("orders/ordersList");
			
			return mv;
		}
		
		@GetMapping(value = "ordersDetail")
		public ModelAndView getOrdersDetail(OrdersDTO ordersDTO) throws Exception {
			ModelAndView mv = new ModelAndView();
			
			ordersDTO = ordersService.getOrdersDetail(ordersDTO);
			
			
			
			mv.addObject("detail", ordersDTO);
			mv.setViewName("orders/ordersDetail");
			
			return mv;
		}
		
		@GetMapping(value = "ordersAdd")
		public ModelAndView setQnaAdd() throws Exception {
			ModelAndView mv = new ModelAndView();
			
			mv.setViewName("orders/ordersAdd");
			
			return mv;
		}
		
		@PostMapping(value = "ordersAdd")
		public ModelAndView setOrdersAdd(OrdersDTO ordersDTO) throws Exception {
			ModelAndView mv = new ModelAndView();
			
			int result = ordersService.setOrdersAdd(ordersDTO);
			
			mv.setViewName("redirect:./ordersList");
			
			return mv;
		}
		
		@GetMapping(value = "ordersUpdate")
		public ModelAndView setOrdersUpdate(OrdersDTO ordersDTO, ModelAndView mv) throws Exception {	
			ordersDTO = ordersService.getOrdersDetail(ordersDTO);
			
			mv.addObject("dto", ordersDTO);
			mv.setViewName("orders/ordersUpdate");
			
			return mv;
		}
		
		@PostMapping(value = "ordersUpdate")
		public ModelAndView setOrdersUpdate(OrdersDTO ordersDTO) throws Exception {
			ModelAndView mv = new ModelAndView();
			
			int result = ordersService.setOrdersUpdate(ordersDTO);
			
			mv.setViewName("redirect:./ordersList");
			
			return mv;
		}
		
		@GetMapping(value = "delete")
		public ModelAndView setOrdersDelete(OrdersDTO ordersDTO) throws Exception {
			ModelAndView mv = new ModelAndView();
			
			int result = ordersService.setOrdersDelete(ordersDTO);
			
			mv.setViewName("redirect:./ordersList");
			
			return mv;
		}
	}
	
		
		
		
		

