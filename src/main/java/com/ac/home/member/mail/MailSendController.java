package com.ac.home.member.mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MailSendController {
	
	@Autowired
	private MailSendService mailService;
	
	@GetMapping("/mailCheck")
	@ResponseBody
	public String mailCheck(String email) {
			System.out.println("이메일 인증 요청이 들어옴!");
			System.out.println("이메일 인증 이메일 : " + email);
		return mailService.joinEmail(email);
	}
}
