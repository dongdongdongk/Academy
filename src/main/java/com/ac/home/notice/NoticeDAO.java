package com.ac.home.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ac.home.util.Pager;

@Repository
public class NoticeDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.ac.home.notice.NoticeDAO.";
	
	
	public List<NoticeDTO>getNoticeList() throws Exception {
	
		return sqlSession.selectList(NAMESPACE + "getNoticeList");
	}

	public Long getTotalCount(Pager pager) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE + "getTotalCount" ,pager);
	}
	
	public int setNoticeAdd(NoticeDTO noticeDTO) throws Exception {
		
		return sqlSession.insert(NAMESPACE + "setNoticeAdd",noticeDTO);
	}
	
	public int setNoticeDelete(NoticeDTO noticeDTO) throws Exception {
		
		return sqlSession.delete(NAMESPACE + "setNoticeDelete",noticeDTO);
	}

	public NoticeDTO getNoticeDetail(NoticeDTO noticeDTO) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE + "getNoticeDetail",noticeDTO);
	}
	
	public int setNoticeUpdate(NoticeDTO noticeDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "setNoticeUpdate",noticeDTO);
	}
	
	public int setNoticeFileAdd(NoticeFileDTO noticeFileDTO) throws Exception {
		
		return sqlSession.insert(NAMESPACE + "setNoticeFileAdd" ,noticeFileDTO);
	}

}
