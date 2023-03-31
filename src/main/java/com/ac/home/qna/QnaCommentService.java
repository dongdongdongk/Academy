package com.ac.home.qna;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ac.home.util.Pager;

@Service
public class QnaCommentService {

	@Autowired
	private QnaCommentDAO qnaCommentDAO;
	
	public List<QnaCommentDTO> getQnaCommentList(Pager pager) throws Exception {
		pager.makeRow();
		
		pager.makeNum(qnaCommentDAO.getTotalCount(pager));
		
		return qnaCommentDAO.getQnaCommentList(pager);
	}
	
	public int setQnaCommentAdd(QnaCommentDTO qnaCommentDTO, HttpSession session) throws Exception {
		return qnaCommentDAO.setQnaCommentAdd(qnaCommentDTO);
	}
	
	public int setQnaCommentDelete(QnaCommentDTO qnaCommentDTO) throws Exception {
		return qnaCommentDAO.setQnaCommentDelete(qnaCommentDTO);
	}
	
	public int setQnaCommentUpdate(QnaCommentDTO qnaCommentDTO) throws Exception {
		return qnaCommentDAO.setQnaCommentUpdate(qnaCommentDTO);
	}
}
