package com.ac.home.util;

import java.io.File;

import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {
	//File�쓣 HDD�뿉�꽌 �궘�젣
	//File�쓣 HDD�뿉�꽌 �궘�젣
	public boolean fileDelete(String path, String fileName) throws Exception {
		File file = new File(path, fileName);
		
		return file.delete();
		
	} 
	//File�쓣 HDD�뿉 ���옣
	public String fileSave(MultipartFile multipartFile, String path)throws Exception{
		//1. �뼱�뵒�뿉 ���옣�븷寃껋씤媛�??
		//  /resources/upload/bankBooK/...
	    //2. ���옣愿�由щ뒗 �슫�쁺泥댁젣媛� �떞�떦
		File file = new File(path);
		
		//�뤃�뜑媛� 議댁옱�븯吏� �븡�쑝硫� �뤃�뜑 �깮�꽦
		if(!file.exists()) {
			file.mkdirs();
		}
		
		
		//3.以묐났�릺吏� �븡�뒗 �뙆�씪紐� �깮�꽦
		//Calendar ca = Calendar.getInstance();
		//ca.getTimeInMillis();
		String name = UUID.randomUUID().toString();
		
		//4.�솗�옣�옄 異붽�
		//OriginalName�뿉�꽌 subString�쓣 �씠�슜�빐�꽌 �솗�옣�옄瑜� 異붿텧
		name = name+"_"+multipartFile.getOriginalFilename();
		System.out.println(name);
		
		//5.�뙆�씪 ���옣
		file = new File(file, name);
		
		//1) multiPartFile媛앹껜�쓽 transferTo硫붿꽌�뱶 �궗�슜
		//multipartFile.transferTo(file);
		
		//2)Spring API FileCopyUtis 媛앹껜�쓽 copy硫붿꽌�뱶�궗�슜
		FileCopyUtils.copy(multipartFile.getBytes(), file);
		
		//return�쑝濡� ���옣�맂 �씠由꾩쓣 以��떎
		return name;
		
	}

}
