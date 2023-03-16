package com.ac.home.member.find;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ac.home.member.MemberDTO;

@Repository
public class FindMemberDAOImpl implements FindMemberDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public MemberDTO getMemberId(MemberDTO memberDTO) {
        return sqlSession.selectOne("com.ac.home.member.find.FindMemberDAO.getMemberId", memberDTO);
    }

    @Override
    public MemberDTO findMemberByIdAndEmail(MemberDTO memberDTO) {
        return sqlSession.selectOne("com.ac.home.member.find.FindMemberDAO.findMemberByIdAndEmail", memberDTO);
    }

    @Override
    public void updatePassword(MemberDTO memberDTO) {
        sqlSession.update("com.ac.home.member.find.FindMemberDAO.updatePassword", memberDTO);
    }
}
