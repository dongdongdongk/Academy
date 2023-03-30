<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제수단 추가</title>
<c:import url="../../template/common_css.jsp"></c:import>
<style>
    .card {
        margin-top: 2rem;
        padding: 2rem;
    }
</style>
</head>
<body>
    <c:import url="../../template/header.jsp"></c:import>
    <div class="container-fluid page-content">
        <div class="row justify-content-center">
            <div class="col-md-7 my-5">
                <h1 class="text-center">결제수단 추가</h1>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
						<c:if test="${not empty successMessage}">
						    <div class="alert alert-success" role="alert">${successMessage}</div>
						</c:if>
						<c:if test="${not empty errorMessage}">
							<div class="alert alert-danger" role="alert">${errorMessage}</div>
						</c:if>
		                <form:form action="./paymentmethodadd" method="post" modelAttribute="paymentMethods" onsubmit="event.preventDefault(); submitForm(this);">
		                    <input type="hidden" name="memberId" value="${member.id}" />
		                    <div class="form-group">
		                        <label for="paymentMethod">결제수단</label>
		                        <form:select path="paymentMethod" id="paymentMethod" class="form-control">
		                            <form:option value="PAYPAL">페이팔</form:option>
		                            <form:option value="CARD">카드</form:option>
		                            <form:option value="BANK" id="bankOption">은행</form:option>
		                        </form:select>
		                    </div>
		                    <div id="cardFields" class="form-group">
		                        <label for="cardNumber">카드 번호</label>
		                        <div class="card-number-input d-flex">
		                            <input type="text" class="cardNumber form-control" onKeyup="inputcardNumber(this);" maxlength="4"/>
		                            <span> - </span>
		                            <input type="text" class="cardNumber form-control" onKeyup="inputcardNumber(this);" maxlength="4"/>
		                            <span> - </span>
		                            <input type="text" class="cardNumber form-control" onKeyup="inputcardNumber(this);" maxlength="4"/>
		                            <span> - </span>
		                            <input type="text" class="cardNumber form-control" maxlength="4"/>
		                        </div>
		                    </div>
		                    <div id="paypalFields" class="form-group">
		                        <label for="email">이메일</label>
								<div class="input-group" style="display: flex;">
								    <input type="text" id="emailPrefix" class="form-control" style="width: 50%; flex-grow: 1;" />
								    <div class="input-group-append" style="width: 50%; flex-grow: 1;">
								        <select id="emailDomain" class="form-control" style="width: 100%;">
								            <option value="@naver.com">@naver.com</option>
								            <option value="@daum.net">@daum.net</option>
								            <option value="@gmail.com">@gmail.com</option>
								            <option value="@hanmail.com">@hanmail.com</option>
								            <option value="@yahoo.co.kr">@yahoo.co.kr</option>
								        </select>
								    </div>
								</div>
		                    </div>
		                    <div id="bankFields" class="form-group">
		                        <label for="bankName">은행명</label>
		                        <select id="bankName" class="form-control">
		                            <option value="국민">국민</option>
		                            <option value="신한">신한</option>
		                            <option value="농협">농협</option>
		                            <option value="카카오">카카오</option>
		                            <option value="토스">토스</option>
		                            <option value="기업">기업</option>
		                            <option value="새마을금고">새마을금고</option>
		                            <option value="수협">수협</option>
		                            <option value="우체국">우체국</option>
		                            <option value="하나">하나</option>
		                            <option value="산업">산업</option>
		                            <option value="제일">제일</option>
		                            <option value="대구">대구</option>
		                            <option value="경남">경남</option>
		                            <option value="부산">부산</option>
		                            <option value="광주">광주</option>
		                        </select>
		                        <label for="accountNumber">계좌 번호</label>
		                        <input type="text" id="accountNumber" class="form-control" />
		                    </div>
		                    <form:hidden path="info" id="info" />
							<div class="row justify-content-center my-5">
								<div class="col-md-4 d-flex justify-content-between">
									<input type="submit" value="결제수단 추가" class="btn btn-outline-secondary" />
									<a href="../memberPage" class="btn btn-outline-secondary">돌아가기</a>
								</div>
							</div>
		                </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<c:import url="../../template/common_js.jsp"></c:import>
<script type="text/javascript" src="../../resources/js/paymentmethodadd.js"></script>
</body>