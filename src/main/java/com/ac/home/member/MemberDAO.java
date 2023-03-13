package com.ac.home.member;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	 
	 @Autowired
	 private SqlSession sqlSession;
	 private final String NAMESPACE="com.ac.home.memeber.MemberDAO.";
	 
	 public int setMemberAdd(MemberDTO memberDTO)throws Exception{
		 
		 return sqlSession.insert(NAMESPACE+"setMemberAdd", memberDTO);
	 }
	 

	
	

}
