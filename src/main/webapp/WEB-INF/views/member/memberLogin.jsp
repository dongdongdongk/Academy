<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container-fluid">
	<div class="row justify-content-center">
		<h1 class="col-md-7 my-5">로그인</h1>
	</div>
	<div class="row justify-content-center my-5">
		<form class="col-md-7" action="memberLogin" method="post">
			<div class="mb-3">
	    		<label for="id" class="form-label">아이디</label>
	    		<input type="text" class="form-control" id="id" name="id" value="${cookie.rememberId.value}">
		  	</div>
		  	<div class="mb-3">
				<label for="pw" class="form-label">비밀번호</label>
			  	<input type="password" class="form-control" id="pw" name="pw">
			</div>
			<div class="mb-3 form-check">
			  	<input type="checkbox" name="remember" value="true" class="form-check-input" id="remember">
			  	<label class="form-check-label" for="remember">아이디 기억하기</label>
			</div>
	  		<button type="submit" class="btn btn-primary">로그인</button>  		
		</form>
	</div>
    <div class="row justify-content-center my-3">
        <div class="col-md-7 d-flex justify-content-between">
            <a href="./find/findId" class="btn btn-outline-secondary">아이디 찾기</a>
            <a href="./find/findPassword" class="btn btn-outline-secondary">비밀번호 찾기</a>
        </div>
    </div>
</div>
<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>

