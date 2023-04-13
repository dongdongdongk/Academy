package com.ac.home.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.ac.home.util.Pager;
import com.ac.home.member.MemberDTO;
import com.ac.home.notice.NoticeDTO;
import com.ac.home.product.ProductDTO;
import com.ac.home.product.ProductImgDTO;
import com.ac.home.qna.QnaDTO;


@Repository
public class ProductDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.ac.home.product.ProductDAO.";
	
	public List<ProductDTO> getProductList()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getProductList");
	}
	
	public ProductDTO getProductDetail(ProductDTO productDTO)throws Exception{
		
		return sqlSession.selectOne(NAMESPACE+"getProductDetail", productDTO);
	}
	public ProductDTO getProductLogin(ProductDTO productDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getProductLogin", productDTO);
	}
	
	public int setProductAdd(ProductDTO productDTO)throws Exception{
		
		return sqlSession.insert(NAMESPACE+"setProductAdd", productDTO);
	}
	 
	public int setProductUpdate(ProductDTO productDTO)throws Exception{
		
		return sqlSession.update(NAMESPACE+"setProductUpdate", productDTO);
	}
	
	public int setProductDelete(ProductDTO productDTO)throws Exception{
		
		return sqlSession.delete(NAMESPACE+"setProductDelete", productDTO);
	}
	
	public int setProductImgAdd(ProductImgDTO productImgDTO)throws Exception{
		
		return sqlSession.insert(NAMESPACE+"setProductImgAdd", productImgDTO);
	}
	
	public List<ProductImgDTO> getProductFileList(ProductDTO productDTO) throws Exception {
		
		return sqlSession.selectList(NAMESPACE + "getProductFileList", productDTO);
	}
	public int getProductFileDelete(ProductImgDTO productImgDTO) throws Exception{
		
		return sqlSession.delete(NAMESPACE+"getProductFileDelete", productImgDTO);
	}
	
}
	
	
	
	
	
	
	
	
