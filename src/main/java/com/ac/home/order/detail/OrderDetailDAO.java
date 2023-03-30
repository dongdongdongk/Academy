package com.ac.home.order.detail;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.ac.home.util.Pager;

@Repository
public class OrderDetailDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.ac.home.order.detail.OrderDetailDAO.";
	
	public List<OrderDetailDTO> getOrderDetailList(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getOrderDetailList", pager);
	}
	public Long getTotalCount(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getTotalCount", pager);
	}
	

	
	
	
	
	

}
