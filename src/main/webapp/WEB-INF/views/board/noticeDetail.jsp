<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoticeDetail</title>
</head>
<body>
	<h3>${dto.num}</h3>
	<h3>${dto.title}</h3>
	<h3>${dto.contents}</h3>
	<h3>${dto.writer}</h3>
	<h3>${dto.regDate}</h3>
	<h3>${dto.hit}</h3>

	<a href= "./delete?num=${dto.num}">삭제</a>
	<a href= "./update?num=${dto.num}">수정</a>
</body>
</html>