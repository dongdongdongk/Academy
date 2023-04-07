package com.ac.home.member.find;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ac.home.member.MemberDTO;

@Repository
public class FindMemberDAO {

    @Autowired
    private SqlSession sqlSession;

    public MemberDTO getMemberId(MemberDTO memberDTO) throws Exception {
        return sqlSession.selectOne("com.ac.home.member.find.FindMemberDAO.getMemberId", memberDTO);
    }

    public MemberDTO findMemberByIdAndEmail(MemberDTO memberDTO) throws Exception {
        return sqlSession.selectOne("com.ac.home.member.find.FindMemberDAO.findMemberByIdAndEmail", memberDTO);
    }

    public void updatePassword(MemberDTO memberDTO) throws Exception {
        sqlSession.update("com.ac.home.member.find.FindMemberDAO.updatePassword", memberDTO);
    }
}