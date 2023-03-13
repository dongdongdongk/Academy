package com.ac.home.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/member/**")
public class MemberController {

		@Autowired
		private MemberService memberService;
		
		@RequestMapping(value = "memberAdd", method = RequestMethod.GET)
		public ModelAndView setMemberAdd()throws Exception{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("/member/memberAdd");
			return mv;
}
}