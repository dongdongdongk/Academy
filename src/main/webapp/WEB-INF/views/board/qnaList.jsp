<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Qna 목록</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>

	<div class="container-fluid">
		<div class="row my-5 col-md-2 mx-auto">
			<h1>질문응답게시판</h1>
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
							<td><a href="./qnaDetail?num=${dto.num}">${dto.num}</a></td>
							<td>${dto.title}</td>
							<td>${dto.writer}</td>
							<td>${dto.hit}</td>
						</tr>
					</c:forEach>
			  	</tbody>
			</table>
				
				<div class="row col-auto mx-auto">
					<a class="btn btn-primary mb-3" href="./qnaAdd">글 등록</a>
				</div>	
				
				<div class="row col-auto mx-auto">
					<a class="btn btn-primary mb-3" href="/">홈</a>
				</div>	
		</div>
	</div>
	
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>