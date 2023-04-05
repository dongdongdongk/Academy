package com.ac.home.product;


import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ac.home.util.Pager;
import com.ac.home.member.MemberDTO;
import com.ac.home.notice.NoticeDTO;
import com.ac.home.product.ProductDTO;
import com.ac.home.product.ProductImgDTO;
import com.ac.home.qna.QnaDTO;
import com.ac.home.util.FileManager;


@Service
public class ProductService {
   
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileManager fileManager;
	
	
	public boolean getProductIdCheck(ProductDTO produtDTO)throws Exception{
		produtDTO = productDAO.getProductLogin(produtDTO);
		
		boolean check = true;
		
		if(produtDTO != null) {
			check = false;
		}
		return check;
		
	}
	
	public List<ProductDTO> getProductList(Pager pager)throws Exception{
		
		
		
		Long totalCount = productDAO.getProductCount(pager);//30
		pager.makeNum(totalCount);
		
		 
		pager.makeRow();
		
		
		return productDAO.getProductList(pager);
	}
	
	public ProductDTO getProductDetail(ProductDTO productDTO)throws Exception{
		return productDAO.getProductDetail(productDTO);
	}
	
	public int setProductAdd(ProductDTO productDTO,MultipartFile pic)throws Exception{
		
		int result = productDAO.setProductAdd(productDTO);
		
		 
	
		if(!pic.isEmpty()) { //pic.getSize() !=0
			System.out.println("서비스 프로덕트 Add PIC ");
			//1. File을 HDD에 저장 경로
			// Project 경로가 아닌 OS가 이용하는 경로
		String realPath= servletContext.getRealPath("resources/images");
		System.out.println(realPath);
		String fileName = fileManager.fileSave(pic, realPath);
		
		ProductImgDTO productImgDTO = new ProductImgDTO();
		productImgDTO.setSave(fileName);
		productImgDTO.setUpLoad(pic.getOriginalFilename());
		productImgDTO.setNum(productDTO.getNum());
	
		result = productDAO.setProductImgAdd(productImgDTO);
		}
		return result;
	}
	public int setProductUpdate(ProductDTO productDTO,MultipartFile pic)throws Exception{
		
		int result = productDAO.setProductUpdate(productDTO);
		System.out.println("업데이트 해줘 서비스 ");
		
		if(!pic.isEmpty()) { //pic.getSize() !=0
			System.out.println("서비스 프로덕트 업데이트 PIC ");
			//1. File을 HDD에 저장 경로
			// Project 경로가 아닌 OS가 이용하는 경로
		String realPath= servletContext.getRealPath("resources/images");
		System.out.println(realPath);
		String fileName = fileManager.fileSave(pic, realPath);
		
		ProductImgDTO productImgDTO = new ProductImgDTO();
		productImgDTO.setSave(fileName);
		productImgDTO.setUpLoad(pic.getOriginalFilename());
		productImgDTO.setNum(productDTO.getNum());
	
		result = productDAO.setProductImgAdd(productImgDTO);
		}
		return result;
	}
	
	public int setProductDelete(ProductDTO productDTO, HttpSession session)throws Exception{
		
		List<ProductImgDTO> ar = productDAO.getProductFileList(productDTO);
		int result = productDAO.setProductDelete(productDTO);
		
		if (result > 0) {
			String realPath = session.getServletContext().getRealPath("resources/upload/product");
			//String realPath = session.getServletContext().getRealPath("/resources/images");
			
			for(ProductImgDTO productImgDTO : ar) {
				boolean check = fileManager.fileDelete(realPath, productImgDTO.getSave());
			}
		}
		return result;
	}
	

	public int getProductFileDelete(ProductImgDTO productImgDTO) throws Exception{
		System.out.println("ProductFileDelete");
		return productDAO.getProductFileDelete(productImgDTO);
	}
	
	

}	

