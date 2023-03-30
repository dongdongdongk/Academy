package com.ac.home.orders;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.ac.home.util.Pager;

@Repository
public class OrdersDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.ac.home.orders.OrdersDAO.";
	
	public List<OrdersDTO> getOrdersList(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getOrdersList", pager);
	}
	public Long getTotalCount(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getTotalCount", pager);
	}
	
	public OrdersDTO getOrdersDetail(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getOrdersDetail", ordersDTO);
	}
	
	public int setOrdersAdd(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setOrdersAdd", ordersDTO);
	}
	
	public int setOrdersUpdate(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "setOrdersUpdate", ordersDTO);
	}
	
	public int setOrdersDelete(OrdersDTO ordersDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "setOrdersDelete", ordersDTO);
	}
	
	

	

	
	
}
