package com.ac.home.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
//@RequestMapping("/notice/*")
public class NoticeController {
	

@GetMapping("notice")
public ModelAndView getBoardList() throws Exception {
	ModelAndView mv = new ModelAndView();
	mv.setViewName("board/noticeList");
	return mv;
	
}
	
}
