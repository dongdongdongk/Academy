<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>noticeList</h1>
		<div class="row">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>NUM</th><th>TITLE</th><th>WRITER</th><th>DATE</th><th>HIT</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="dto">
							<tr>
								<td>${dto.num}</td>
								<td>
								<a href="./detail?num=${dto.num}">${dto.title}</a></td>
								<td>
								<td>${dto.writer}</td>
								<td>${dto.regDate}</td>
								<td>${dto.hit}</td>
							</tr>
						</c:forEach>
					</tbody>
				
				</table>
			</div>
			<a href="./add">글쓰기</a>
			
</body>
</html>