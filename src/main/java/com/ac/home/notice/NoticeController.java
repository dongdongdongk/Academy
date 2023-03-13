package com.ac.home.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ac.home.util.Pager;




//list

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("list")
	public ModelAndView getNoticeList() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<NoticeDTO> ar = noticeService.getNoticeList();
		
		mv.addObject("list",ar);
		mv.setViewName("board/noticeList");
		return mv;
		
	}
	
	
	
	
	//Add
	
	@GetMapping("add")
	public ModelAndView setNoticeAdd() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/noticeAdd");
		return mv;
		
	}
	
	@PostMapping("add")
	public ModelAndView setNoticeAdd(NoticeDTO noticeDTO) throws Exception {
	
		ModelAndView mv = new ModelAndView();
		int result = noticeService.setNoticeAdd(noticeDTO);
		
		mv.setViewName("redirect:./list");
		
		return mv; 
		
	}
	
	
	//delete
	
	@GetMapping("delete")
	public ModelAndView setNoticeDelete(NoticeDTO noticeDTO) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:./list");
		return mv;
		
	}
	
	//detail 
	
	@GetMapping("detail")
	public ModelAndView getNoticeDetail(NoticeDTO noticeDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		noticeDTO = noticeService.getNoticeDetail(noticeDTO);
		mv.addObject("dto",noticeDTO);
		mv.setViewName("board/noticeDetail");
		return mv;
	
	}
	
	
	public ModelAndView setNoticeUpdate(NoticeDTO noticeDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		noticeDTO = noticeService.getNoticeDetail(noticeDTO);
		
		mv.addObject("dto",noticeDTO);
		mv.setViewName("board/update");
		return mv;
	}
	
	
	

	
	
	

	
}
