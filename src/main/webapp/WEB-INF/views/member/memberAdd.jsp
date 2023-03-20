<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<c:import url="../template/common_css.jsp"></c:import>
<style>
	.redResult{
		color: red;
	}

	.blueResult {
		color: blue;
	}

</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container-fluid page-content">
	<div class="row justify-content-center">
		<h1 class="col-md-6 text-center fw-bold">회원가입</h1>
	</div>
	<div class = "row justify-content-center">
		<form class="col-md-6" id="frm" action="./memberAdd" method="post">
		
		<div class="mb-3">
		  <label for="id" class="form-label fw-bold">아이디</label>
		  <input type="text" name="id" class="form-control" id="id" placeholder="아이디 입력" required>
		  <div id="idResult"></div>
		</div>
		
		<div class="mb-3">
		  <label for="pw" class="form-label fw-bold">비밀번호</label>
		  <input type="password" name="pw" class="form-control" id="pw" placeholder="비밀번호 입력" minlength="6" maxlength="12" required>
		  <div id="pwResult"></div>
		</div>
		
		<div class="mb-3">
		  <label for="pwCheck" class="form-label fw-bold">비밀번호 확인</label>
		  <input type="password" name="pwCheck" class="form-control" id="pwCheck" placeholder="비밀번호 확인" minlength="6" maxlength="12" required>
		  <div id="pwCheckResult"></div>
		</div>
		
		<div class="mb-3">
		  <label for="name" class="form-label fw-bold">이름</label>
		  <input type="text" name="name" class="form-control" id="name" placeholder="이름 입력" required>
		</div>
		
		<div class="mb-3">
		  <label for="address" class="form-label fw-bold">주소</label>
		  <input type="text" name="address" class="form-control" id="address" placeholder="주소 입력" readonly required>
		</div>
		
		<div class="mb-3">
		  <label for="addressDetail" class="form-label fw-bold">상세주소</label>
		  <input type="text" name="addressDetail" class="form-control" id="addressDetail" placeholder="상세주소 입력" required>
		</div>
		
		<div class="mb-3">
		  <label for="phone" class="form-label fw-bold">전화번호</label>
		  <input type="text" name="phone" class="form-control" id="phone" placeholder="전화번호 입력" required>
		</div>
		
		<div class="mb-3">
		    <label for="email" class="form-label fw-bold">이메일</label>
		    <div class="input-group">
		        <input type="text" class="form-control" name="email" id="email" placeholder="이메일 입력" >
		        <select class="form-control" name="emaildomain" id="emaildomain" >
		            <option value="@naver.com">@naver.com</option>
		            <option value="@daum.net">@daum.net</option>
		            <option value="@gmail.com">@gmail.com</option>
		            <option value="@hanmail.com">@hanmail.com</option>
		            <option value="@yahoo.co.kr">@yahoo.co.kr</option>
		        </select>
		    </div>
		    <div class="input-group mt-3">
		        <input class="form-control mail-check-input" placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6">
		        <button type="button" class="btn btn-primary" id="mail-Check-Btn">인증번호 발송</button>
		        <button type="button" class="btn btn-secondary d-none" id="mail-Confirm-Btn">인증번호 확인</button>
		    </div>
		    <span id="emailResult"></span>
		    <span id="mail-check-warn"></span>
		</div>

		<div class="mb-3">
				<button class="btn btn-outline-success fw-bold" id="btn" type="button">등록</button> 
		</div>
		</form>
	</div>
</div>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		window.onload = function(){
		document.getElementById("address").addEventListener("click", function(){ //주소입력칸을 클릭하면
		//카카오 지도 발생
			new daum.Postcode({
				oncomplete: function(data) { //선택시 입력값 세팅
					document.getElementById("address").value = data.address; // 주소 넣기
				}
				}).open();
			});
		}
	</script>

<script src="../resources/js/memberAdd.js"></script>
<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>
