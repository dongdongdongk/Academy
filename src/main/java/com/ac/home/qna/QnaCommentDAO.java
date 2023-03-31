package com.ac.home.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ac.home.util.Pager;

@Repository
public class QnaCommentDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.ac.home.qna.QnaCommentDAO.";
	
	public List<QnaCommentDTO> getQnaCommentList(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getQnaCommentList", pager);
	}
	
	public int setQnaCommentAdd(QnaCommentDTO qnaCommentDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setQnaCommentAdd", qnaCommentDTO);
	}
	
	public Long getTotalCount(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getTotalCount", pager);
	}
	
	public int setQnaCommentDelete(QnaCommentDTO qnaCommentDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "setQnaCommentDelete", qnaCommentDTO);
	}
	
	public int setQnaCommentUpdate(QnaCommentDTO qnaCommentDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "setQnaCommentUpdate", qnaCommentDTO);
	}
}
