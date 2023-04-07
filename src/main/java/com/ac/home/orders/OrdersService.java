package com.ac.home.orders;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import com.ac.home.util.Pager;

@Service
public class OrdersService {
	
	@Autowired
	private OrdersDAO ordersDAO;
	
	public List<OrdersDTO> getOrdersList(Pager pager) throws Exception {
		pager.makeRow();
		
		pager.makeNum(ordersDAO.getTotalCount(pager));
		
		return ordersDAO.getOrdersList(pager);
	}
	
	public OrdersDTO getOrdersDetail(OrdersDTO ordersDTO) throws Exception {	
		return ordersDAO.getOrdersDetail(ordersDTO);
	}
	public int setOrdersAdd(OrdersDTO ordersDTO) throws Exception {
		return ordersDAO.setOrdersAdd(ordersDTO);
	}
	
	public int setOrdersUpdate(OrdersDTO ordersDTO) throws Exception {
		return ordersDAO.setOrdersUpdate(ordersDTO);
	}
	
	public int setOrdersDelete(OrdersDTO ordersDTO,HttpSession session) throws Exception {
		
		int result = ordersDAO.setOrdersDelete(ordersDTO);
		return result;
	}
	
	

}
