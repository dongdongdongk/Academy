package com.ac.home.notice;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.web.WebAppConfiguration;

import com.ac.home.util.MyTestCase;


public class NoticeDAOTest extends MyTestCase  {

	@Autowired
	private NoticeDAO noticeDAO;
	
//	@Test
//	public void test() throws Exception {
//		List<NoticeDTO> ar = noticeDAO.getNoticeList();
//		
//		assertEquals(0, ar.size());
//	}

}
