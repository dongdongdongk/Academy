<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<c:import url="../template/common_css.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/adminPageSideBar.css">
<link rel="stylesheet" href="/resources/css/event.css">
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	
	<div id="conWrap">
		<div id="left_menu">
			<div class="left_menu">
				<ul class="list">
					<li id="memberList" class="icon01 none_sMenu">
						<a href="#">회원관리</a>
					</li>
					<li id="crList" class="icon02 none_sMenu">
						<a href="#">후기관리</a>
					</li>
					<li id="productList" class="icon03 none_sMenu">
						<a href="#">상품관리</a>
					</li>
					<li id="order" class="icon04 none_sMenu">
						<a href="#">주문현황</a>
					</li>
					<li id="sales" class="icon05 none_sMenu">
						<a href="#">매출현황</a>
					</li>
				</ul>
			</div>
		</div>

		<div id="admincontents">
			<a class="tab_button"></a>
			<div class="row lists">
				<h3>관리자 페이지</h3>
			</div>
		</div>

	</div>
	
	<c:import url="../template/topBtn.jsp"></c:import>
	<c:import url="../template/common_js.jsp"></c:import>
	<script src="/resources/js/adminPage.js"></script>
</body>
</html>