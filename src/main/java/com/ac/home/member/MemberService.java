package com.ac.home.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ac.home.member.MemberDTO;

@Service
public class MemberService {
    @Autowired
	private MemberDAO memberDAO;
    
    
    public boolean getMeberIdCheck(MemberDTO memberDTO)throws Exception{
		 memberDTO = memberDAO.getMemberLogin(memberDTO);
		 
		 boolean check = true;
		 
		 if(memberDTO != null) {
			 check = false;
		 }
		 return check;
	 }
    
    public int setMemberAdd(MemberDTO memberDTO)throws Exception{
		int result = memberDAO.setMemberAdd(memberDTO);
		result = memberDAO.setMemberRoleAdd(memberDTO);
		return result;
	}
    
    public MemberDTO getMemberLogin(MemberDTO memberDTO)throws Exception{
    	
    	MemberDTO result = memberDAO.getMemberLogin(memberDTO);
    	
    	if(result != null && memberDTO.getPw().equals(result.getPw())) {
    		memberDTO.setPw(null);
    		memberDTO.setRoleDTO(result.getRoleDTO());
    		return memberDTO;
    	}else {
    		return null;
    	}
    }
    public MemberDTO getMemberPage(MemberDTO memberDTO)throws Exception{
    	return memberDAO.getMemberLogin(memberDTO);
    }
    
    public int setMemberUpdate(MemberDTO memberDTO)throws Exception{
    	return memberDAO.setMemberUpdate(memberDTO);
    }
}
