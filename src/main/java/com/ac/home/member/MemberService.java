package com.ac.home.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ac.home.member.MemberDTO;

@Service
public class MemberService {
    @Autowired
	private MemberDAO memberDAO;
    
    public int setMemberAdd(MemberDTO memberDTO)throws Exception{
		int result = memberDAO.setMemberAdd(memberDTO);
		
		return result;
	}
}
