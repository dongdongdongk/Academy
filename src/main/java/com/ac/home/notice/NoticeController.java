package com.ac.home.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ac.home.util.Pager;




//list

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("list")
	public ModelAndView getNoticeList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<NoticeDTO> ar = noticeService.getNoticeList(pager);
		
		mv.addObject("list",ar);
		mv.setViewName("board/noticeList");
		return mv;
		
	}
	
	
	
	
	//Add
	
	@GetMapping("add")
	public ModelAndView setNoticeAdd(NoticeDTO noticeDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/noticeAdd");
		return mv;
		
	}
	
	@PostMapping("add")
	public ModelAndView setNoticeAdd(NoticeDTO noticeDTO, MultipartFile [] files, HttpSession session) throws Exception {
	
		ModelAndView mv = new ModelAndView();
		
		int result = noticeService.setNoticeAdd(noticeDTO, files, session);
		
		mv.setViewName("redirect:./list");
		
		return mv; 
		
	}
	
	
	//delete
	
	@GetMapping("delete")
	public ModelAndView setNoticeDelete(NoticeDTO noticeDTO) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		int result = noticeService.setNoticeDelete(noticeDTO);
		
		mv.setViewName("redirect:./list");
		return mv;
		
	}
	
	//detail 
	
	@GetMapping("detail")
	public ModelAndView getNoticeDetail(NoticeDTO noticeDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		noticeDTO = noticeService.getNoticeDetail(noticeDTO);
		
		int result = noticeService.setNoticeHit(noticeDTO);
		
		mv.addObject("dto",noticeDTO);
		mv.setViewName("board/noticeDetail");
		return mv;
	
	}
	
	//update
	
	@GetMapping("update")
	public ModelAndView setNoticeUpdate(NoticeDTO noticeDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		noticeDTO = noticeService.getNoticeDetail(noticeDTO);
		
		mv.addObject("dto",noticeDTO);
		mv.setViewName("board/noticeUpdate");
		return mv;
	}
	
	@PostMapping("update")
	public ModelAndView setNoticeUpdate(ModelAndView mv, NoticeDTO noticeDTO ) throws Exception {
		
		int result = noticeService.setNoticeUpdate(noticeDTO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@PostMapping("checked")
	public ModelAndView setNoticeChecked(NoticeDTO noticeDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = noticeService.setNoticeChecked(noticeDTO);
		
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;

	}
	

	

	
	
	

	
}
