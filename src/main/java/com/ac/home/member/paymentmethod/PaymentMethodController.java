package com.ac.home.member.paymentmethod;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ac.home.member.MemberDTO;

@Controller
@RequestMapping("/member/payment")
public class PaymentMethodController {

    @Autowired
    private PaymentMethodService paymentService;
    
    @GetMapping("/paymentmethod")
    public ModelAndView getPaymentMethods(HttpSession session) throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
        String loggedInMemberId = memberDTO.getId();

        modelAndView.addObject("paymentMethods", paymentService.getPaymentMethods(loggedInMemberId));
        modelAndView.setViewName("/member/payment/paymentmethod");

        return modelAndView;
    }
    
    @PostMapping("/paymentmethodadd")
    public ModelAndView addPaymentMethods(@ModelAttribute("paymentMethods") PaymentMethodDTO paymentDTO, HttpSession session) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
        String memberId = memberDTO.getId();

        // Check for duplicates
        if (paymentService.isDuplicate(paymentDTO, memberId)) {
            modelAndView.addObject("errorMessage", "중복된 결제수단입니다.");
            modelAndView.addObject("paymentMethods", paymentDTO);
            modelAndView.setViewName("member/payment/paymentmethodadd");
            return modelAndView;
        }

        // Call the PaymentMethodService to add the payment method with the member's ID
        paymentService.addPaymentMethods(paymentDTO, memberId);

        // Redirect to the paymentmethodadd.jsp page under member/payment directory
        modelAndView.addObject("successMessage", "결제수단이 성공적으로 추가되었습니다.");
        modelAndView.setViewName("member/payment/paymentmethodadd");
        return modelAndView;
    }
    
    @GetMapping("/paymentmethodadd")
    public ModelAndView showAddPaymentMethodForm() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("paymentMethods", new PaymentMethodDTO());
        modelAndView.setViewName("member/payment/paymentmethodadd");
        return modelAndView;
    }
}
