package com.ac.home.member;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	 
	 @Autowired
	 private SqlSession session;
	 private final String NAMESPACE="com.iu.memeber.MemberDAO.";
	 

	
	

}
