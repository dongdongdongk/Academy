package com.ac.home.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ac.home.util.Pager;

@Service
public class QnaService {

	@Autowired
	private QnaDAO qnaDAO;
	
	public List<QnaDTO> getQnaList(Pager pager) throws Exception {
		pager.makeRow();
		
		pager.makeNum(qnaDAO.getTotalCount(pager));
		
		return qnaDAO.getQnaList(pager);
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
	
	public int setQnaHit(QnaDTO qnaDTO) throws Exception {
		return qnaDAO.setQnaHit(qnaDTO);
	}
	
	public int setReplyAdd(QnaDTO qnaDTO) throws Exception {
		QnaDTO parent = (QnaDTO)qnaDAO.getQnaDetail(qnaDTO);
		
		qnaDTO.setRef(parent.getRef());
		
		qnaDTO.setStep(parent.getStep() + 1);
		
		qnaDTO.setDepth(parent.getDepth() + 1);
		
		int result = qnaDAO.setStepUpdate(parent);
		
		result = qnaDAO.setReplyAdd(qnaDTO);
		
		return result; 
	}
}
