package com.iu.s1.member;

import java.util.Set;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	 
	 @Autowired
	 private SqlSession session;
	 private final String NAMESPACE="com.iu.memeber.MemberDAO.";
	 

	
	

}
