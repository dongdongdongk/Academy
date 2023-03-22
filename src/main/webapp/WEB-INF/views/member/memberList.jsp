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
	
	<c:import url="../template/adminSideBar.jsp"></c:import>
	
	<div class="container admin_container">
		<div class="row">
			<h1 style="text-align: center; margin: 50px 0;">회원 리스트</h1>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>회원ID</th>
						<th>이름</th>
						<th>Email</th>
						<th>전화번호</th>
						<th>주소</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="vo">
						<tr>
							<td>${vo.id}</td>
							<td>${vo.name}</td>
							<td>${vo.email}</td>
							<td>${vo.phone}</td>
							<td>${vo.address}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	
	<c:import url="../template/common_js.jsp"></c:import>
	<script src="/resources/js/adminPage.js"></script>
</body>
</html>