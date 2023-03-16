<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="/resources/css/home.css">
<link rel="stylesheet" href="/resources/css/reset.css">
</head>
<body>

	<header>
		<div>
			<a href="/"><h1 class="title">동영상 강좌 서비스</h1></a>
		</div>
			
		<div class="container-fluid">
			<span class="navbar-toggler-icon"></span>
			  <div class="collapse navbar-collapse" id="navbarSupportedContent">
				  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active" href="#">홈</a></li>
					<li class="nav-item"><a class="nav-link active" href="#">전체강좌</a></li>
					<li class="nav-item"><a class="nav-link active" href="#">내 강의실</a></li>
					<li class="nav-item"><a class="nav-link active" href="#">질문답변게시판</a></li>
					<li class="nav-item"><a class="nav-link active" href="#">공지사항</a></li>
				  </ul>
				  
				  <ul class="navbar-nav">
					  <c:if test="${empty member}">
						  <li class="nav-item"><a class="nav-link" href="#">LOGIN</a></li>
						  <li class="nav-item"><a class="nav-link" href="#">JOIN</a></li>
					  </c:if>
					  
					  <c:if test="${not empty member}">
						  <li class="nav-item"><a class="nav-link" href="#">MYPAGE</a></li>
						  <li class="nav-item"><a class="nav-link" href="#">LOGOUT</a></li>
					  </c:if>
				  </ul>
			  </div>
			</div>

			<div class="homeImg">
				<img src="/resources/images/home.jpg">
			</div>

		<a href="qna/qnaList">질문응답게시판</a>
		<a href="cr/crList">수강후기</a>
	
	</header>
	
</body>
</html>

