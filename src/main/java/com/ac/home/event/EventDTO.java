package com.ac.home.event;

import java.sql.Date;
import java.util.List;

public class EventDTO {

	private Long num;
	private String title;
	private String contents;
	private String writer;
	private Date regDate;
	private Long hit;
	private List<EventFileDTO> eventFileDTOs;
	
	
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Long getHit() {
		return hit;
	}
	public void setHit(Long hit) {
		this.hit = hit;
	}
	public List<EventFileDTO> getEventFileDTOs() {
		return eventFileDTOs;
	}
	public void setEventFileDTOs(List<EventFileDTO> eventFileDTOs) {
		this.eventFileDTOs = eventFileDTOs;
	}
	
	
	
}
