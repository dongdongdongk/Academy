package com.ac.home.event;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ac.home.notice.NoticeDTO;
import com.ac.home.util.Pager;

@Controller 
@RequestMapping("/event/*")
public class EventController {

	@Autowired
	private EventService eventService;
		
	
	
	//list
	@GetMapping("list")
	public ModelAndView getEventList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<EventDTO> ar = eventService.getEventList(pager); 
		mv.addObject("list", ar);
		
		mv.setViewName("board/eventList");
		return mv;
		
	}
	
	
	//add
	
	@GetMapping("add")
	public ModelAndView setEventAdd() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/eventAdd");
		return mv;
		
	}
	
	@PostMapping("add")
	public ModelAndView setEventAdd(EventDTO eventDTO, MultipartFile [] files, HttpSession session) throws Exception {
	
		ModelAndView mv = new ModelAndView();
		
		int result = eventService.setEventAdd(eventDTO, files, session);
		
		mv.setViewName("redirect:./list");
		
		return mv; 
		
	}
	
	@GetMapping("detail")
	public ModelAndView getEventDetail(EventDTO eventDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		eventDTO = eventService.getEventDetail(eventDTO);
		
		//int result = eventService.setNoticeHit(noticeDTO);
		
		mv.addObject("dto",eventDTO);
		mv.setViewName("board/eventDetail");
		return mv;
	
	}
	
	//delete
	
		@GetMapping("delete")
		public ModelAndView setEventDelete(EventDTO eventDTO) throws Exception {
			
			ModelAndView mv = new ModelAndView();
			
			int result = eventService.setEventDelete(eventDTO);
			
			mv.setViewName("redirect:./list");
			return mv;
			
		}
		
		@GetMapping("update")
		public ModelAndView setEventUpdate(EventDTO eventDTO) throws Exception {
			ModelAndView mv = new ModelAndView();
			eventDTO = eventService.getEventDetail(eventDTO);
			
			mv.addObject("dto",eventDTO);
			mv.setViewName("board/eventUpdate");
			return mv;
		}
		
		@PostMapping("update")
		public ModelAndView setEventUpdate(ModelAndView mv, EventDTO eventDTO ) throws Exception {
			
			int result = eventService.setEventUpdate(eventDTO);
			mv.setViewName("redirect:./list");
			return mv;
		}
		
		
	
	
}
