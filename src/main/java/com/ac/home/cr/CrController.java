package com.ac.home.cr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/cr/*")
public class CrController {
	
	@Autowired
	private CrService crService;
	
	@GetMapping(value = "crList")
	public ModelAndView getCrList() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<CrDTO> ar = crService.getCrList();
		
		mv.addObject("list", ar);
		mv.setViewName("board/crList");
		
		return mv;
	}
}
