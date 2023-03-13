<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar bg-dark navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
	<div class="container-fluid">
		<a href="/" class="navbar-brand"><img src="/resources/images/logo.png" alt=""></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>	
     <div class="collapse navbar-collapse" id="navbarSupportedContent">

		<ul class="navbar-nav ms-auto">
			<c:if test="${empty member}">
			<li class="nav-item"><a class="nav-link" href="/member/memberLogin" style="font-size: 14px;">LOGIN</a></li>
			<li class="nav-item"><a class="nav-link" href="/member/memberAgree">JOIN</a></li>
			</c:if>
			<c:if test="${not empty member}">
			<li class="nav-item"><a class="nav-link" href="/member/memberPage" style="font-size: 11px;">MYPAGE</a></li>
			<li class="nav-item"><a class="nav-link" href="/member/memberLogout">LOGOUT</a></li>
			</c:if>
		</ul>
     </div>  	
    </div>
</nav>
