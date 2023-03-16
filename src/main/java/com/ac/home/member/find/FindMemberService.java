package com.ac.home.member.find;

import com.ac.home.member.MemberDTO;

public interface FindMemberService {
    MemberDTO getMemberId(MemberDTO memberDTO) throws Exception;

	MemberDTO findMemberByIdAndEmail(MemberDTO memberDTO) throws Exception;

	void updatePassword(MemberDTO memberDTO) throws Exception;
}
