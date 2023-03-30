package com.ac.home.member.paymentmethod;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentMethodService {
    
    @Autowired
    private PaymentMethodDAO paymentDAO;

    public List<PaymentMethodDTO> getPaymentMethods(String memberId) throws Exception {
        return paymentDAO.getPaymentMethods(memberId);
    }
    
    public int getPaymentMethodCount(String memberId) throws Exception {
        return paymentDAO.getPaymentMethodCount(memberId);
    }
    
    public void addPaymentMethods(PaymentMethodDTO paymentDTO, String memberId) throws Exception {
        int paymentId = getNextPaymentId();
        paymentDTO.setId(paymentId);
        paymentDAO.addPaymentMethods(paymentDTO, memberId);
    }
    
    public int getNextPaymentId() throws Exception {
        return paymentDAO.getNextPaymentId();
    }
    
    public boolean isDuplicate(PaymentMethodDTO paymentDTO, String memberId) throws Exception{
        List<PaymentMethodDTO> existingPaymentMethods = getPaymentMethods(memberId);

        for (PaymentMethodDTO existingPaymentMethod : existingPaymentMethods) {
            if (existingPaymentMethod.getPaymentMethod().equals(paymentDTO.getPaymentMethod())
                    && existingPaymentMethod.getInfo().equals(paymentDTO.getInfo())) {
                return true;
            }
        }

        return false;
    }
}
