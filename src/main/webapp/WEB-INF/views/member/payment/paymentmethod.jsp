<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>결제수단 조회</title>
    <c:import url="../../template/common_css.jsp"></c:import>
    
	<style>
	    .payment-method-item {
	        display: flex;
	        flex-direction: row;
	        align-items: center;
	        justify-content: space-between;
	        max-height: 150px;
	        overflow: auto;
	    }
	
	    .payment-method {
	        max-width: 200px;
	        overflow: hidden;
	        white-space: nowrap;
	        text-overflow: ellipsis;
	    }
	</style>

</head>
<body>
<c:import url="../../template/header.jsp"></c:import>
	<div class="container-fluid page-content">
	    <div class="row justify-content-center">
	        <div class="col-md-7 my-5">
	            <h1 class="text-center">결제수단 조회</h1>
	        </div>
	    </div>
	    <div id="payment-methods-container" class="d-flex justify-content-center flex-wrap">
	    <c:if test="${not empty successMessage}">
	        <div class="p-3 mx-2 my-2" style="width: 60%;">
	            <div class="alert alert-success" role="alert">${successMessage}</div>
	        </div>
	    </c:if>
	        <c:forEach var="paymentMethod" items="${paymentMethods}">
	            <form action="/member/payment/paymentmethodupdate" method="post" class="card p-3 mx-2 my-2" style="width: 60%;">
	                <div class="payment-method-item row">
	                    <div contenteditable="false" class="payment-method col-md-6 mb-2">${paymentMethod.paymentMethod}</div>
	                    <div contenteditable="false" class="info col-md-6 text-center">${paymentMethod.info}</div>
	                </div>
	                <div class="d-flex justify-content-center">
	                    <input type="hidden" name="id" value="${paymentMethod.id}" />
	                    <input type="hidden" name="paymentMethod" value="${paymentMethod.paymentMethod}" />
	                    <input type="hidden" name="info" class="info-input" />
	                    <button type="button" class="btn btn-primary update-btn mx-2">수정하기</button>
	                    <button type="submit" class="btn btn-success save-btn mx-2" style="display:none;">저장하기</button>
	                    <button type="button" class="btn btn-danger delete-btn mx-2">삭제하기</button>
	                </div>
	            </form>
	        </c:forEach>
	    </div>
	    <div class="d-flex justify-content-center my-4">
        	<a href="../memberPage" class="btn btn-outline-secondary mx-2">돌아가기</a>
        	<a href="./paymentmethodadd" class="btn btn-outline-secondary mx-2">결제수단 추가하기</a>
    	</div>
	</div>
</body>

<c:import url="../../template/common_js.jsp"></c:import>
<script type="text/javascript" src="../../resources/js/paymentmethod.js"></script>
</body>
</html>