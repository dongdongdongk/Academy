package com.ac.home.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

import com.ac.home.product.ProductImgDTO;

@Component("fileDownView")
public class FileDownView extends AbstractView {
	
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("FileDownView");
		ProductImgDTO productImgDTO = (ProductImgDTO)model.get("boardFile");
//		System.out.println(boardFileDTO.getFileNum());
//		System.out.println(boardFileDTO.getFileName());
						//String
//		Iterator<String> it = model.keySet().iterator();
//		
//		while(it.hasNext()) {
//			String key = it.next();
//			System.out.println("key : " +key);
//			
//		}    
		//key : boarName, boardFile
		
		//寃쎈줈 以�鍮�
		String path = (String)model.get("boardName");
		path = "resources/upload/"+path+"/";
		
		path = request.getSession().getServletContext().getRealPath(path);
		
		File file = new File(path, productImgDTO.getSave());
		
		//�쓳�떟�떆 �븳湲� Encoding 泥섎━
		response.setCharacterEncoding("UTF-8");
		
		//�뙆�씪�쓽 �겕湲�
		response.setContentLength((int)file.length());
		
		//�떎�슫�떆 �뙆�씪�씠由� 吏��젙�븯怨� �씤肄붾뵫 �꽕�젙 �솢�깘硫� �븳湲� �뙆�씪 �씪�닔�룄�엳怨� �븳湲��씠硫� 源⑥쭚
		String downName= productImgDTO.getUpLoad();
		downName = URLEncoder.encode(downName, "UTF-8");
		
		//Header �젙蹂� �꽕�젙
		response.setHeader("Content-Disposition", "attachment;fileName=\""+downName+"\"");
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		//�쟾�넚  0,1�쓣 泥섎━�븯�뒗 Stream
		FileInputStream fi = new FileInputStream(file);
		OutputStream os = response.getOutputStream();
		
		FileCopyUtils.copy(fi, os);
		
		//�옄�썝 �빐�젣
		os.close();
		fi.close();
	}
	
}