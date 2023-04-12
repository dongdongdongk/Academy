package com.ac.home.about;





import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping(value = "/template/*")
public class AboutController {


		
		
		@GetMapping(value = "about")
		public ModelAndView getQrdersList() throws Exception {
			ModelAndView mv = new ModelAndView();
			
		
			
			
			mv.setViewName("template/about");
			
			return mv;
		}
		
		
	}
	
		
		
		
		

