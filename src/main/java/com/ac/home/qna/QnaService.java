package com.ac.home.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaService {

	@Autowired
	private QnaDAO qnaDAO;
	
	public List<QnaDTO> getQnaList() throws Exception {
		return qnaDAO.getQnaList();
	}
	
	public QnaDTO getQnaDetail(QnaDTO qnaDTO) throws Exception {
		return qnaDAO.getQnaDetail(qnaDTO);
	}
	
	public int setQnaAdd(QnaDTO qnaDTO) throws Exception {
		return qnaDAO.setQnaAdd(qnaDTO);
	}
	
	public int setQnaUpdate(QnaDTO qnaDTO) throws Exception {
		return qnaDAO.setQnaUpdate(qnaDTO);
	}
	
	public int setQnaDelete(QnaDTO qnaDTO) throws Exception {
		return qnaDAO.setQnaDelete(qnaDTO);
	}
}
