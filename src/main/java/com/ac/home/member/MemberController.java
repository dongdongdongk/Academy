package com.ac.home.member;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ac.home.cr.CrDTO;
import com.ac.home.cr.CrService;
import com.ac.home.member.MemberDTO;
import com.ac.home.member.find.FindMemberService;
import com.ac.home.member.mail.*;
import com.ac.home.member.paymentmethod.*;
import com.ac.home.product.ProductDTO;
import com.ac.home.product.ProductService;
import com.ac.home.util.Pager;


@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MailSendController mailSendController;
    
	@Autowired
	private MailSendService mailService;
	
    @Autowired
    private FindMemberService findMemberService;
    
    @Autowired
    private PaymentMethodController paymentController;
    
    @Autowired
    private ProductService productService;
    
    @Autowired
    private CrService crService;
    
	@PostMapping("memberIdCheck")
	public ModelAndView getMemberIdCheck(MemberDTO memberDTO)throws Exception{
		boolean check = memberService.getMemberIdCheck(memberDTO);
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("result", check);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@PostMapping("memberEmailCheck")
	public ModelAndView getMemberEmailCheck(MemberDTO memberDTO)throws Exception {
	    boolean check = memberService.getMemberEmailCheck(memberDTO);
	    ModelAndView mv = new ModelAndView();

	    mv.addObject("result", check);
	    mv.setViewName("common/ajaxResult");
	    return mv;
	}
	
	@RequestMapping(value="memberAgree", method = RequestMethod.GET)
	public void setMemberAgree()throws Exception{
		
	}
	
	@RequestMapping(value = "memberAdd", method = RequestMethod.GET)
	public ModelAndView setMemberAdd()throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/member/memberAdd");
		return mv;
	}
	@RequestMapping(value = "memberAdd", method = RequestMethod.POST)
	public ModelAndView setMemberAdd(MemberDTO memberDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = memberService.setMemberAdd(memberDTO);
		mv.setViewName("redirect:../");
		return mv;
	}
	
	@RequestMapping(value = "memberLogin", method = RequestMethod.GET)
	public ModelAndView getMemberLogin()throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/memberLogin");
		return mv;
	}
	
	@RequestMapping(value = "memberLogin", method = RequestMethod.POST)
	public ModelAndView getMemberLogin(MemberDTO memberDTO, HttpServletRequest request, HttpServletResponse response) throws Exception {
	    ModelAndView mv = new ModelAndView();
	    memberDTO = memberService.getMemberLogin(memberDTO);
	    
	    if (memberDTO != null) {
	        HttpSession session = request.getSession();
	        session.setAttribute("member", memberDTO);

	        String remember = request.getParameter("remember");
	        if ("true".equals(remember)) {
	            Cookie cookie = new Cookie("rememberId", memberDTO.getId());
	            cookie.setMaxAge(60 * 60 * 24 * 30); // 30일간 유지
	            response.addCookie(cookie);
	        } else {
	            Cookie cookie = new Cookie("rememberId", "");
	            cookie.setMaxAge(0);
	            response.addCookie(cookie);
	        }

	        mv.setViewName("redirect:../");
	        
	    } else {
	        mv.addObject("errorMessage", "로그인에 실패했습니다.");
	        mv.setViewName("member/memberLogin");
	    }
	    
	    return mv;
	}
	
	@RequestMapping(value = "memberLogout", method = RequestMethod.GET)
	public ModelAndView getMemberLogout(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		session.invalidate();
		mv.setViewName("redirect:../");
		return mv;
	}
	
	@RequestMapping(value = "memberPage", method = RequestMethod.GET)
	public ModelAndView getMemberPage(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		
		memberDTO = memberService.getMemberPage(memberDTO);
		mv.addObject("dto", memberDTO);
		mv.setViewName("member/memberPage");
		return mv;
	}

	@RequestMapping(value = "memberUpdate", method = RequestMethod.GET)
	public ModelAndView getMemberUpdate(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		
		memberDTO = memberService.getMemberPage(memberDTO);
		mv.addObject("dto", memberDTO);

		mv.setViewName("member/memberUpdate");
		return mv;
	}

	@RequestMapping(value = "memberUpdate", method = RequestMethod.POST)
	public ModelAndView getMemberUpdate(MemberDTO memberDTO, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberDTO sesssionMemberDTO	= (MemberDTO)session.getAttribute("member");
		memberDTO.setId(sesssionMemberDTO.getId());
		int result = memberService.setMemberUpdate(memberDTO);
		
		mv.setViewName("redirect:./memberPage");
		return mv;
	}
	
	// 관리자 페이지
	@GetMapping(value = "adminPage")
	public ModelAndView getAdminPage() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("admin/adminPage");
		
		return mv;
	}
	
	// 관리자 페이지 회원 관리
	@GetMapping(value = "memberList")
	public ModelAndView getMemberList() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<MemberDTO> ar = memberService.getMemberList();
		
		mv.addObject("list", ar);
		mv.setViewName("admin/adminMemberList");
		
		return mv;
	}
	
	// 관리자 페이지 상품 관리
	@GetMapping(value = "productList")
	public ModelAndView getProductList()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<ProductDTO> ar = productService.getProductList();
		
	    mv.addObject("list", ar);
	      
	    mv.setViewName("admin/adminProductList");
	      
	    return mv;
	}
	
	// 관리자 수강후기 관리
	@GetMapping(value = "crList")
	public ModelAndView getCrList()throws Exception{
		ModelAndView mv = new ModelAndView();
		
	    List<CrDTO> ar = crService.getCrList();  
		
	    mv.addObject("list", ar);
	    mv.setViewName("admin/adminCrList");
	    
	    return mv;
	}
	
	// 관리자 수강후기 삭제
	@PostMapping(value = "crDelete")
	public ModelAndView setCrDelete(CrDTO crDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = crService.setCrDelete(crDTO);
		
		mv.setViewName("admin/adminCrList");
		
		return mv;
	}
}
