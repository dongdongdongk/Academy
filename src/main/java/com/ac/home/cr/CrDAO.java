package com.ac.home.cr;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CrDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.ac.home.cr.CrDAO.";
	
	public List<CrDTO> getCrList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "getCrList");
	}
	
	public int setCrAdd(CrDTO crDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setCrAdd", crDTO);
	}
	
	public int setCrDelete(CrDTO crDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "setCrDelete", crDTO);
	}
}
