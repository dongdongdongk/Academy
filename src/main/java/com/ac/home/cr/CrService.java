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
	
	public int setCrAdd(CrDTO crDTO) throws Exception {
		return crDAO.setCrAdd(crDTO);
	}
	
	public int setCrDelete(CrDTO crDTO) throws Exception {
		return crDAO.setCrDelete(crDTO);
	}
}
