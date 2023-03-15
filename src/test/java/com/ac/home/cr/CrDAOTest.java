package com.ac.home.cr;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.ac.home.MyTestCase;

public class CrDAOTest extends MyTestCase {
	
	@Autowired
	private CrDAO crDAO;
	
//	@Test
//	public void test() throws Exception {
//		List<CrDTO> ar = crDAO.getCrList();
//		
//		assertNotEquals(0, ar.size());
//		
//	}
//	
//	@Test
//	public void setCrAdd() throws Exception {
//		CrDTO crDTO = new CrDTO();
//		
//		crDTO.setTitle("Title3");
//		crDTO.setContents("Contents3");
//		crDTO.setWriter("Writer3");
//		
//		int result = crDAO.setCrAdd(crDTO);
//		
//		assertEquals(1, result);
//		
//	}
	
//	@Test
//	public void setCrDelete() throws Exception {
//		CrDTO crDTO = new CrDTO();
//		
//		crDTO.setNum(3L);
//		
//		int result = crDAO.setCrDelete(crDTO);
//		
//		assertEquals(1, result);
//	}
}
