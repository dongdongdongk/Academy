package com.ac.home.cart;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.ac.home.cart.";
	
	public boolean findCartGoods(CartDTO cartDTO) {
		String result = sqlSession.selectOne(NAMESPACE +".findCartGoods", cartDTO);
		return Boolean.parseBoolean(result);
	}

	public void addGoodsInCart(CartDTO cartDTO) {
		sqlSession.insert(NAMESPACE +".addGoodsInCart", cartDTO);
	}
}
