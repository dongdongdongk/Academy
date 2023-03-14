package com.ac.home.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;


import com.ac.home.product.ProductService;

@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	
	   @Autowired
	   private ProductService productService;
	   

}
