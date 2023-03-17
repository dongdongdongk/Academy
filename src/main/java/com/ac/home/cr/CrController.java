package com.ac.home.cr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@GetMapping(value = "crAdd")
	public ModelAndView setCrAdd() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("board/crAdd");
		
		return mv;
	}
	
	@PostMapping(value = "crAdd")
	public ModelAndView setCrAdd(CrDTO crDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = crService.setCrAdd(crDTO);
		
		mv.setViewName("redirect:./crList");
		
		return mv;
	}
	
	@GetMapping(value = "crDelete")
	public ModelAndView setCrDelete(CrDTO crDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = crService.setCrDelete(crDTO);
		
		mv.setViewName("redirect:./crList");
		
		return mv;
	}
}
