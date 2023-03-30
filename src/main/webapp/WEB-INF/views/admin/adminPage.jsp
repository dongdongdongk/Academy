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
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	
	<div class="sideBar">
		<c:import url="../template/adminSideBar.jsp"></c:import>

		<div class="container admin_container">
			<div class="row lists">
				<!-- 리스트 들어갈 영역 -->
			</div>
		</div>
	</div>
	
	<c:import url="../template/common_js.jsp"></c:import>
	<script src="/resources/js/adminPage.js"></script>
</body>
</html>