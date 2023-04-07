package com.ac.home.event;

import java.sql.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ac.home.member.MemberDTO;
import com.ac.home.notice.NoticeDTO;
import com.ac.home.util.FileManager;
import com.ac.home.util.Pager;

@Service
public class EventService {
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private EventDAO eventDAO;
	@Autowired
	private FileManager fileManager;

	public List<EventDTO>getEventList(Pager pager) throws Exception {
		
		pager.makeRow();
		pager.makeNum(eventDAO.getTotalCount(pager));
		
		return eventDAO.getEventList(pager);
	
	}
	
	public int setEventAdd(EventDTO eventDTO, MultipartFile [] files, HttpSession session) throws Exception {
		int result = eventDAO.setEventAdd(eventDTO);
		
		//file HDD에 저장
		String realPath = session.getServletContext().getRealPath("resources/upload/event");
		System.out.println(realPath);
		
		for(MultipartFile multipartFile: files) {
			
			if(multipartFile.isEmpty()) {
				continue;
			}
			
			String fileName = fileManager.fileSave(multipartFile, realPath);
					
			//DB INSERT
			EventFileDTO eventFileDTO = new EventFileDTO();
			eventFileDTO.setNum(eventDTO.getNum());
			eventFileDTO.setFileName(fileName);
			eventFileDTO.setOriName(multipartFile.getOriginalFilename());
			
			result = eventDAO.setEventFileAdd(eventFileDTO);
			
		}
		
		return result;
	}
	public EventDTO getEventDetail(EventDTO eventDTO) throws Exception {
		return eventDAO.getEventDetail(eventDTO);
	}
	
	public int setEventDelete(EventDTO eventDTO) throws Exception {
		int result = eventDAO.setEventDelete(eventDTO);
		return result;
		
	}
	
	public int setEventUpdate(EventDTO eventDTO) throws Exception {
		return eventDAO.setEventUpdate(eventDTO);
	}
	
//	public EventDTO getDateCheck(EventDTO eventDTO) throws Exception {
//		eventDTO = eventDAO.getEventDetail(eventDTO);
//		boolean check  =  true;
//		Date startDate = eventDTO.getStartDate();
//		Date endDate = eventDTO.getEndDate();
//		if(startDate < endDate) {
//			
//		}
//		
//		
//		return eventDAO.getDateCheck(eventDTO);
//	}
	

}
