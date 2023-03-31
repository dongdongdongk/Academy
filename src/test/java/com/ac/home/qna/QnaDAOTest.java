package com.ac.home.qna;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.ac.home.MyTestCase;

public class QnaDAOTest extends MyTestCase {
	
	@Autowired
	private QnaDAO qnaDAO;
	
	@Autowired
	private QnaCommentDAO qnaCommentDAO;
	
	
//	@Test
//	public void getQnaCommentList() throws Exception {
//		
//	}
	
	@Test
	public void setQnaCommentAdd() throws Exception {
		QnaCommentDTO qnaCommentDTO = new QnaCommentDTO();
		
		qnaCommentDTO.setContents("댓글 테스트1");
		qnaCommentDTO.setNum(60L);
		qnaCommentDTO.setWriter("장현서");
		
		int result = qnaCommentDAO.setQnaCommentAdd(qnaCommentDTO);
		
		assertEquals(1, result);
	}
	
	
	
//	@Test
//	public void getQnaList() throws Exception {
//		List<QnaDTO> ar = qnaDAO.getQnaList(null);
//		
//		assertNotEquals(0, ar.size());
//	}
//	
//	@Test
//	public void getQnaDetail() throws Exception {
//		QnaDTO qnaDTO = new QnaDTO();
//		
//		qnaDTO.setNum(1L);
//		
//	 	qnaDTO = qnaDAO.getQnaDetail(qnaDTO);
//		
//	 	assertNotNull(qnaDTO);
//	}
	
//	@Test
//	public void setQnaAdd() throws Exception {
//		QnaDTO qnaDTO = new QnaDTO();
//		
//		qnaDTO.setTitle("Title3");
//		qnaDTO.setContents("Contents3");
//		qnaDTO.setWriter("Writer3");
//		
//		int result = qnaDAO.setQnaAdd(qnaDTO);
//		
//		assertEquals(1, result);
//	}
	
//	@Test
//	public void setQnaUpdate() throws Exception {
//		QnaDTO qnaDTO = new QnaDTO();
//		
//		qnaDTO.setNum(1L);
//		qnaDTO.setTitle("Title3");
//		qnaDTO.setContents("Contents3");
//		
//		int result = qnaDAO.setQnaUpdate(qnaDTO);
//		
//		assertEquals(1, result);
//	}
	
//	@Test
//	public void setQnaDelete() throws Exception {
//		QnaDTO qnaDTO = new QnaDTO();
//		
//		qnaDTO.setNum(6L);
//		
//		int result = qnaDAO.setQnaDelete(qnaDTO);
//		
//		assertEquals(1, result);
//	}
	
}
