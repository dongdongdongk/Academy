package com.ac.home.product;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ac.home.product.ProductService;
import com.ac.home.util.Pager;
import com.ac.home.product.ProductDTO;


@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	
	   @Autowired
	   private ProductService productService;
	   
	   
	   //list
	   @RequestMapping(value="list", method = RequestMethod.GET)
		public ModelAndView getProductList(Pager pager)throws Exception{
			ModelAndView mv = new ModelAndView();
		
			List<ProductDTO> ar = productService.getProductList(pager);
			
			
		      mv.addObject("list",ar);
		      
		     
		       
		      mv.setViewName("product/productList");
		       
			return mv;
		}
	   
		//detail
		@RequestMapping(value = "productDetail", method = RequestMethod.GET)
		public ModelAndView getProductDetail(ProductDTO productDTO)throws Exception{
			
			ModelAndView mv = new ModelAndView();
			
			productDTO = productService.getProductDetail(productDTO);
			
//			int result = productService.setProductHit(productDTO);
		
			mv.addObject("dto", productDTO);
			mv.setViewName("product/productDetail");
			
			
			return mv;
		}
		//add form 이동
		@RequestMapping(value = "productAdd", method = RequestMethod.GET)
		public ModelAndView setProductAdd(ModelAndView mv)throws Exception{
			System.out.println("안녕");
			mv.setViewName("product/productAdd");
			System.out.println("안녕2");
			return mv;
		}
		//add DB Insert
		@RequestMapping(value = "productAdd", method = RequestMethod.POST)
		public ModelAndView setProductAdd(ProductDTO productDTO, MultipartFile  pic) throws Exception{
			
			ModelAndView mv = new ModelAndView();

			int result = productService.setProductAdd(productDTO, pic);
			
			mv.setViewName("redirect:./list");
			System.out.println("연결 테스트 업데이트 10 완료");
			return mv;
			
		}
		//delelte
		@RequestMapping(value = "delete", method = RequestMethod.GET)
		public ModelAndView setProductDelete(ProductDTO productDTO, HttpSession session) throws Exception{
			
			ModelAndView mv = new ModelAndView();
			
			int result = productService.setProductDelete(productDTO, session);
			System.out.println("ProductFileDelete 그냥 디테일3");
			mv.setViewName("redirect:./list");
			
			return mv;
			
		}
		
		//�닔�젙 �뤌 �씠�룞
		@RequestMapping(value="update", method = RequestMethod.GET)
		public ModelAndView setProductUpdate(ProductDTO productDTO) throws Exception{
			ModelAndView mv = new ModelAndView();
			productDTO = productService.getProductDetail(productDTO);
			
			mv.setViewName("product/productUpdate");
			mv.addObject("dto", productDTO);
			return mv;
		}
		@RequestMapping(value="update", method = RequestMethod.POST)
		public ModelAndView setProductUpdate(ProductDTO productDTO,MultipartFile pic) throws Exception{
			ModelAndView mv = new ModelAndView();
		
			int result = productService.setProductUpdate(productDTO,pic);
			
			mv.setViewName("redirect:./list");
			System.out.println("연결 테스트 업데이트3");
			return mv;
			
		}
		@PostMapping("productDelete")
		public ModelAndView setProductFileDelete(ProductImgDTO productImgDTO) throws Exception{
			ModelAndView mv = new ModelAndView();
			int result = productService.getProductFileDelete(productImgDTO);
			System.out.println("ProductFileDelete 그냥 디테일5");
			mv.addObject("dto", result);
			mv.setViewName("./common/ajaxResult");
			System.out.println("ProductFileDelete 그냥 디테일6");
			return mv;
		}
	 
		
		
		

	}
	   
	   
	   
	
