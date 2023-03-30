<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoticeDetail</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<header style="margin-top: 200px;">	
	<h3 hidden="">${dto.num}</h3>
	<h3>${dto.title}</h3>
	<h3>${dto.writer}</h3>
	<h3>${dto.regDate}</h3>
	<h3>${dto.hit}</h3>
	<h3>${dto.contents}</h3>
	
	<div>
		<c:forEach items="${dto.noticeFileDTOs}" var="fileDTO">
			<c:if test="${not empty dto.noticeFileDTOs}">
				<img src="../resources/upload/notice/${fileDTO.fileName}">
			</c:if>
		</c:forEach>
	</div>
	
	
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
	</header>
<c:import url="../template/common_js.jsp"></c:import>
<c:import url="../template/bottom.jsp"></c:import>	
</body>
</html>