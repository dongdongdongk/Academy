package com.ac.home.qna;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ac.home.member.MemberDTO;
import com.ac.home.util.Pager;

@Controller
@RequestMapping(value = "/qnaComment/*")
public class QnaCommentController {
	
	@Autowired
	private QnaCommentService qnaCommentService;
	
	@GetMapping(value = "qnaCommentList")
	public ModelAndView getQnaCommentList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<QnaCommentDTO> ar = qnaCommentService.getQnaCommentList(pager);
		
		mv.addObject("list", ar);
		mv.setViewName("common/commentList");
		
		return mv;
	}
	
	@PostMapping(value = "qnaCommentAdd")
	public ModelAndView setQnaCommentAdd(QnaCommentDTO qnaCommentDTO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		
		qnaCommentDTO.setWriter(memberDTO.getId());
		
		int result = qnaCommentService.setQnaCommentAdd(qnaCommentDTO, null);
		
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	@PostMapping(value = "qnaCommentDelete")
	public ModelAndView setQnaCommentDelete(QnaCommentDTO qnaCommentDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = qnaCommentService.setQnaCommentDelete(qnaCommentDTO);
		
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	@PostMapping(value = "qnaCommentUpdate")
	public ModelAndView setQnaCommentUpdate(QnaCommentDTO qnaCommentDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = qnaCommentService.setQnaCommentUpdate(qnaCommentDTO);
		
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
}
