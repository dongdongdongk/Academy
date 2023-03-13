package com.ac.home.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.ac.home.qna.QnaDAO.";
	
	public List<QnaDTO> getQnaList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "getQnaList");
	}
	
	public QnaDTO getQnaDetail(QnaDTO qnaDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getQnaDetail", qnaDTO);
	}
	
	public int setQnaAdd(QnaDTO qnaDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setQnaAdd", qnaDTO);
	}
	
	public int setQnaUpdate(QnaDTO qnaDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "setQnaUpdate", qnaDTO);
	}
	
	public int setQnaDelete(QnaDTO qnaDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "setQnaDelete", qnaDTO);
	}
}
