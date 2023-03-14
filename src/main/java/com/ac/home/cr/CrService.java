package com.ac.home.cr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CrService {
	
	@Autowired
	private CrDAO crDAO;
	
	public List<CrDTO> getCrList() throws Exception {
		return crDAO.getCrList();
	}
}
