package com.ac.home.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ac.home.member.MemberDTO;

@Repository
public class MemberDAO {
	 
	 @Autowired
	 private SqlSession sqlSession;
	 private final String NAMESPACE="com.ac.home.member.MemberDAO.";
	                               
	 public int setMemberAdd(MemberDTO memberDTO)throws Exception{
		 
		 return sqlSession.insert(NAMESPACE+"setMemberAdd", memberDTO);
	 }
	 
	 public int setMemberRoleAdd(MemberDTO memberDTO)throws Exception{
			return sqlSession.insert(NAMESPACE+"setMemberRoleAdd", memberDTO);
	}
	 
	 public MemberDTO getMemberLogin(MemberDTO memberDTO)throws Exception{
		 
		 return sqlSession.selectOne(NAMESPACE+"getMemberLogin", memberDTO);
	 }
	 
	 public int setMemberUpdate(MemberDTO memberDTO)throws Exception{
		 return sqlSession.update(NAMESPACE+"getMemberUpdate", memberDTO);
	 }
	 
	 public int setMemberDelete(MemberDTO memberDTO)throws Exception{
		 
		 return sqlSession.delete(NAMESPACE+"setMemberDelete", memberDTO);
	 }
	
	

}
