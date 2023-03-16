package com.ac.home.event;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ac.home.notice.NoticeDTO;
import com.ac.home.notice.NoticeFileDTO;
import com.ac.home.util.Pager;



@Repository
public class EventDAO {

	@Autowired
	private SqlSession sqlSession;
	private String NAMESPACE = "com.ac.home.event.EventDAO.";
	
	
	public List<EventDTO> getEventList(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getEventList",pager);
	}
	
	public int setEventAdd(EventDTO eventDTO) throws Exception {
		
		return sqlSession.insert(NAMESPACE + "setEventAdd",eventDTO);
	}
	
	public int setEventFileAdd(EventFileDTO eventFileDTO) throws Exception {
		
		return sqlSession.insert(NAMESPACE + "setEventFileAdd" ,eventFileDTO);
	}
	
	public Long getTotalCount(Pager pager) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE + "getTotalCount" ,pager);
	}
	
	public EventDTO getEventDetail(EventDTO eventDTO) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE + "getEventDetail",eventDTO);
	}
	
	public int setEventDelete(EventDTO eventDTO) throws Exception {
		
		return sqlSession.delete(NAMESPACE + "setEventDelete",eventDTO);
	}
	
	public int setEventUpdate(EventDTO eventDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "setEventUpdate",eventDTO);
	}
	
	
}
