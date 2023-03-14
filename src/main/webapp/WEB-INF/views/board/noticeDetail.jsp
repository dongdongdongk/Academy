<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoticeDetail</title>
</head>
<body>
	<h3 hidden="">${dto.num}</h3>
	<h3>${dto.title}</h3>
	<h3>${dto.writer}</h3>
	<h3>${dto.regDate}</h3>
	<h3>${dto.hit}</h3>
	<h3>${dto.contents}</h3>
	
	<c:forEach items="${dto.noticeFileDTOs}" var="fileDTO">
		<a href="./fileDown?fileNum=${fileDTO.fileNum}">${fileDTO.oriName}</a>
	</c:forEach>

	<a href= "./delete?num=${dto.num}">삭제</a>
	<a href= "./update?num=${dto.num}">수정</a>
	<a href= "./list">목록</a>
</body>
</html>