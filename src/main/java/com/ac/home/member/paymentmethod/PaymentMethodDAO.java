package com.ac.home.member.paymentmethod;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PaymentMethodDAO {

	@Autowired
	private SqlSession sqlSession;
	private static final String NAMESPACE = "com.ac.home.member.paymentmethod.PaymentMethodDAO";

	public List<PaymentMethodDTO> getPaymentMethods(String memberId) throws Exception {
	    return sqlSession.selectList(NAMESPACE + ".getPaymentMethods", memberId);
	}
	
    public int getPaymentMethodCount(String memberId) throws Exception {
        return sqlSession.selectOne(NAMESPACE + ".getPaymentMethodCount", memberId);
    }

	public void addPaymentMethods(PaymentMethodDTO paymentDTO, String memberId) throws Exception {
	    int paymentId = getNextPaymentId();
	    Map<String, Object> paramMap = new HashMap<String, Object>();
	    
	    paramMap.put("paymentId", paymentId);
	    paramMap.put("paymentMethod", paymentDTO.getPaymentMethod());
	    paramMap.put("info", paymentDTO.getInfo());
	    paramMap.put("memberId", memberId);
	    
	    sqlSession.insert(NAMESPACE + ".addPaymentMethods", paramMap);
	}


	public int getNextPaymentId() throws Exception {
	    return sqlSession.selectOne(NAMESPACE + ".getNextPaymentId");
	}
}