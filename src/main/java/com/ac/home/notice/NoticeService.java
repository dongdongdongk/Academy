package com.ac.home.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ac.home.util.Pager;

@Service
public class NoticeService {

	@Autowired
	private NoticeDAO noticeDAO;
	
	public List<NoticeDTO> getNoticeList() throws Exception {
		

		return noticeDAO.getNoticeList();
		
	}
	
	public int setNoticeAdd(NoticeDTO noticeDTO) throws Exception {
		
		int result = noticeDAO.setNoticeAdd(noticeDTO);
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
	
	
}
