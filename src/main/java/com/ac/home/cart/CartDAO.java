package com.ac.home.cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ac.home.product.ProductDTO;

@Repository
public class CartDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.ac.home.cart.CartDAO.";
	
	public List<CartDTO> getCartList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "getCartList");
	}
	
	public int setCartAdd(CartDTO cartDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setCartAdd", cartDTO);
	}
	
	public int setCartDelete(CartDTO cartDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "setCartDelete", cartDTO);
	}
	
	public Long getSumPrice(CartDTO cartDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getSumPrice", cartDTO);
	}
	
	public Long cartCheck(CartDTO cartDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "cartCheck", cartDTO);
	}
	public int getCartUpdate(CartDTO cartDTO)throws Exception{
		
		return sqlSession.update(NAMESPACE+"getCartUpdate", cartDTO);
	}
	
}
