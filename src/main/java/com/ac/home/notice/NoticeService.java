package com.ac.home.notice;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ac.home.util.FileManager;
import com.ac.home.util.Pager;


@Service
public class NoticeService {

	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Autowired
	private FileManager fileManager;
	
	public List<NoticeDTO> getNoticeList(Pager pager) throws Exception {
		
		pager.makeRow();
		
		pager.makeNum(noticeDAO.getTotalCount(pager));

		return noticeDAO.getNoticeList(pager);
		
	}
	
	public int setNoticeAdd(NoticeDTO noticeDTO, MultipartFile [] files, HttpSession session) throws Exception {
		int result = noticeDAO.setNoticeAdd(noticeDTO);
		
		//file HDD에 저장
		String realPath = session.getServletContext().getRealPath("resources/upload/notice");
		System.out.println(realPath);
		
		for(MultipartFile multipartFile: files) {
			
			if(multipartFile.isEmpty()) {
				continue;
			}
			
			String fileName = fileManager.fileSave(multipartFile, realPath);
					
			//DB INSERT
			NoticeFileDTO noticeFileDTO = new NoticeFileDTO();
			noticeFileDTO.setNum(noticeDTO.getNum());
			noticeFileDTO.setFileName(fileName);
			noticeFileDTO.setOriName(multipartFile.getOriginalFilename());
			
			result = noticeDAO.setNoticeFileAdd(noticeFileDTO);
			
		}
		
		return result;
	}
	
	public int setNoticeDelete(NoticeDTO noticeDTO) throws Exception {
		int result = noticeDAO.setNoticeDelete(noticeDTO);
		return result;
		
	}
	
	public NoticeDTO getNoticeDetail(NoticeDTO noticeDTO) throws Exception {
		return noticeDAO.getNoticeDetail(noticeDTO);
	}
	
	public int setNoticeUpdate(NoticeDTO noticeDTO) throws Exception {
		return noticeDAO.setNoticeUpdate(noticeDTO);
	}
	
	public int setNoticeHit (NoticeDTO noticeDTO) throws Exception {
		return noticeDAO.setNoticeHit(noticeDTO);
	}
	
	public int setNoticeChecked(NoticeDTO noticeDTO) throws Exception {
		return noticeDAO.setNoticeChecked(noticeDTO);
	}
}
