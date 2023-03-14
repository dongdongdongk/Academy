package com.ac.home.cr;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.ac.home.MyTestCase;

public class CrDAOTest extends MyTestCase {
	
	@Autowired
	private CrDAO crDAO;
	
	@Test
	public void test() throws Exception {
		List<CrDTO> ar = crDAO.getCrList();
		
		assertNotEquals(0, ar.size());
		
	}
}
