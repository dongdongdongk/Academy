package com.ac.home.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.ac.home.util.Pager;
import com.ac.home.member.MemberDTO;
import com.ac.home.product.ProductDTO;
import com.ac.home.product.ProductImgDTO;
import com.ac.home.qna.QnaDTO;


@Repository
public class ProductDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.ac.home.product.ProductDAO.";
	
	public Long getProductCount(Pager pager) throws Exception{
		System.out.println("DAO 프로덕트 카운터");
		return sqlSession.selectOne(NAMESPACE+"getProductCount", pager);
	}
	
	public List<ProductDTO> getProductList(Pager pager)throws Exception{
		System.out.println("DAO 프로덕트 리스트");
		return sqlSession.selectList(NAMESPACE+"getProductList", pager);
		
	}
	
	public ProductDTO getProductDetail(ProductDTO productDTO)throws Exception{
		System.out.println("DAO 프로덕트 디테일");
		return sqlSession.selectOne(NAMESPACE+"getProductDetail", productDTO);
	}
	
	public int setProductAdd(ProductDTO productDTO)throws Exception{
		System.out.println("DAO 연결 테스트 업데이트 에드");
		return sqlSession.insert(NAMESPACE+"setProductAdd", productDTO);
	}

	
	public int setCategoryAdd(ProductDTO productDTO)throws Exception{
		System.out.println("DAO 카테고리 에드");
		  return sqlSession.insert(NAMESPACE+"setCategoryAdd", productDTO); 
	}
	 
	public int setProductUpdate(ProductDTO productDTO)throws Exception{
		System.out.println("DAO 프로덕트 업데이트");
		return sqlSession.update(NAMESPACE+"setProductUpdate", productDTO);
	}
	
	public int setProductDelete(ProductDTO productDTO)throws Exception{
		System.out.println("DAO 프로덕트 삭제");
		return sqlSession.delete(NAMESPACE+"setProductDelete", productDTO);
	}
	
	public int setProductImgAdd(ProductImgDTO productImgDTO)throws Exception{
		System.out.println("DAO 프로덕트 이미지 에드");
		return sqlSession.insert(NAMESPACE+"setProductImgAdd", productImgDTO);
	}
	
	public List<ProductImgDTO> getProductFileList(ProductDTO productDTO) throws Exception {
		System.out.println("DAO 프로덕트 이미지 파일 리스트");
		return sqlSession.selectList(NAMESPACE + "getProductFileList", productDTO);
	}
	public int getProductFileDelete(ProductImgDTO productImgDTO) throws Exception{
		System.out.println("DAO 프로덕트 이미지 파일 삭제");
		return sqlSession.delete(NAMESPACE+"getProductFileDelete", productImgDTO);
	}
	
	/*
	 * public int setProductHit(ProductDTO productDTO) throws Exception { return
	 * sqlSession.update(NAMESPACE + "setProductHit", productDTO); }
	 */
	
}
	
	
	
	
	
	
	
	
