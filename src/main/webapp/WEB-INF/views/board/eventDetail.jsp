<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EventDetail</title>
</head>
<body>
	<h3 hidden="">${dto.num}</h3>
	<h3>${dto.title}</h3>
	<h3>${dto.writer}</h3>
	<h3>${dto.regDate}</h3>
	<h3>${dto.hit}</h3>
	<h3>${dto.contents}</h3>
	
	<!-- <div>
		<c:forEach items="${dto.eventFileDTOs}" var="fileDTO">
			<c:if test="${not empty dto.eventFileDTOs}">
				<img src="../resources/upload/event/${fileDTO.fileName}">
			</c:if>
		</c:forEach>
	</div> -->
	
	
	<%-- <c:forEach items="${dto.noticeFileDTOs}" var="fileDTO">
		<a href="./fileDown?fileNum=${fileDTO.fileNum}">${fileDTO.oriName}</a>
	</c:forEach>
 --%>
	<c:if test="${not empty member}">
            <c:if test="${member.roleDTO.roleName eq 'ADMIN'}">
	<a href= "./delete?num=${dto.num}">삭제</a>
	<a href= "./update?num=${dto.num}">수정</a>
	</c:if>
	</c:if>
	
	
	<a href= "./list">목록</a>
</body>
</html>