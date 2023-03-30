package com.ac.home.order.detail;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.ac.home.util.Pager;

@Service
public class OrderDetailService {

	@Autowired
	private OrderDetailDAO orderDetailDAO;
	
	public List<OrderDetailDTO> getOrderDetailList(Pager pager) throws Exception {
		pager.makeRow();
		
		pager.makeNum(orderDetailDAO.getTotalCount(pager));
		
		return orderDetailDAO.getOrderDetailList(pager);
	}
}
