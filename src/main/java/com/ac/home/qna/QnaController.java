package com.ac.home.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ac.home.util.Pager;

@Controller
@RequestMapping(value = "/qna/*")
public class QnaController {

	@Autowired
	private QnaService qnaService;
	
	@GetMapping(value = "qnaList")
	public ModelAndView getQnaList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<QnaDTO> ar = qnaService.getQnaList(pager);
		
		mv.addObject("list", ar);
		mv.setViewName("board/qnaList");
		
		return mv;
	}
	
	@GetMapping(value = "qnaDetail")
	public ModelAndView getQnaDetail(QnaDTO qnaDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		qnaDTO = qnaService.getQnaDetail(qnaDTO);
		
		int result = qnaService.setQnaHit(qnaDTO);
		
		mv.addObject("detail", qnaDTO);
		mv.setViewName("board/qnaDetail");
		
		return mv;
	}
	
	@GetMapping(value = "qnaAdd")
	public ModelAndView setQnaAdd() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("board/qnaAdd");
		
		return mv;
	}
	
	@PostMapping(value = "qnaAdd")
	public ModelAndView setQnaAdd(QnaDTO qnaDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = qnaService.setQnaAdd(qnaDTO);
		
		mv.setViewName("redirect:./qnaList");
		
		return mv;
	}
	
	@GetMapping(value = "qnaUpdate")
	public ModelAndView setQnaUpdate(QnaDTO qnaDTO, ModelAndView mv) throws Exception {	
		qnaDTO = qnaService.getQnaDetail(qnaDTO);
		
		mv.addObject("dto", qnaDTO);
		mv.setViewName("board/qnaUpdate");
		
		return mv;
	}
	
	@PostMapping(value = "qnaUpdate")
	public ModelAndView setQnaUpdate(QnaDTO qnaDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = qnaService.setQnaUpdate(qnaDTO);
		
		mv.setViewName("redirect:./qnaList");
		
		return mv;
	}
	
	@GetMapping(value = "qnaDelete")
	public ModelAndView setQnaDelete(QnaDTO qnaDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = qnaService.setQnaDelete(qnaDTO);
		
		mv.setViewName("redirect:./qnaList");
		
		return mv;
	}
	
	@GetMapping(value = "qnaReply")
	public ModelAndView setReplyAdd(QnaDTO qnaDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("board/qnaReply");
		
		return mv;
	}
	
	@PostMapping(value = "qnaReply")
	public ModelAndView setReplyAdd(QnaDTO qnaDTO, ModelAndView mv) throws Exception {
		
		int result = qnaService.setReplyAdd(qnaDTO);
		
		String message = "등록 실패";
		
		if(result > 0) {
			message = "글이 등록 되었습니다";
		}
		
		mv.addObject("url", "./qnaDetail?num=" + qnaDTO.getNum());
		mv.addObject("result", message);
		mv.setViewName("common/result");
		
		return mv;
	}
}
