<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강후기 목록</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
	
	<div class="container-fluid">
		<div class="row my-5 col-md-2 mx-auto">
			<h1>수강 후기</h1>
		</div>
		
		<div class="row col-md-7 mx-auto">
			<table class="table">
			  	<thead class="table-dark">
			 		<tr>
						<th>NUM</th><th>TITLE</th><th>WRITER</th><th>HIT</th>
					</tr>
			 	</thead>
			 	
			  	<tbody>
			  		<c:forEach items="${list}" var="dto">
						<tr>
							<td>${dto.num}</td>
							<td>${dto.title}</td>
							<td>${dto.writer}</td>
							<td>${dto.hit}</td>
						</tr>
					</c:forEach>
			  	</tbody>
			</table>
		</div>
	</div>
	
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>