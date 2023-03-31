package com.ac.home.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ac.home.product.ProductService;

import com.ac.home.util.Pager;

import oracle.sql.json.OracleJsonParser;

import com.ac.home.cart.CartDTO;
import com.ac.home.cart.CartService;
import com.ac.home.member.MemberDTO;
import com.ac.home.product.ProductDTO;


@Controller
@RequestMapping("/product/*")
public class ProductController {
		
	   @Autowired
	   private ProductService productService;
	  
	   
	   @PostMapping("productIdCheck")
		public ModelAndView getProductIdCheck(ProductDTO productDTO)throws Exception{
			boolean check = productService.getProductIdCheck(productDTO);
			ModelAndView mv = new ModelAndView();
			
			mv.addObject("result", check);
			mv.setViewName("common/ajaxResult");
			return mv;
		}
	   
	   
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
		
			mv.setViewName("product/productDetail");
			mv.addObject("dto", productDTO);
			mv.setViewName("product/productDetail");
			
			
			return mv;
		}
		//add form 이동
		@RequestMapping(value = "productAdd", method = RequestMethod.GET)
		public ModelAndView setProductAdd(ModelAndView mv)throws Exception{
			
			mv.setViewName("product/productAdd");
			
			return mv;
		}
		//add DB Insert
		@RequestMapping(value = "productAdd", method = RequestMethod.POST)
		public ModelAndView setProductAdd(ProductDTO productDTO, MultipartFile  pic) throws Exception{
			
			ModelAndView mv = new ModelAndView();

			int result = productService.setProductAdd(productDTO, pic);
			
			mv.setViewName("redirect:./list");
			
			return mv;
			
		}
		//delelte
		@RequestMapping(value = "delete", method = RequestMethod.GET)
		public ModelAndView setProductDelete(ProductDTO productDTO, HttpSession session) throws Exception{
			
			ModelAndView mv = new ModelAndView();
			
			int result = productService.setProductDelete(productDTO, session);
			
			mv.setViewName("redirect:./list");
			
			return mv;
			
		}
		
		
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
			
			return mv;
			
		}
		@PostMapping("productDelete")
		public ModelAndView setProductFileDelete(ProductImgDTO productImgDTO) throws Exception{
			ModelAndView mv = new ModelAndView();
			int result = productService.getProductFileDelete(productImgDTO);
			
			mv.addObject("dto", result);
			mv.setViewName("./common/ajaxResult");
			
			return mv;
		}
	 
		
		
		

	}
	   
	   
	   
	
