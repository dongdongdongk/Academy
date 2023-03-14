<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 정보</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
	
		<div class="container-fluid my-5">
			<div class="row mb-4">
				<h3 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">상세정보</h3>
			</div>
	
			<div class="row col-md-7 mx-auto">
				<div class="row g-3">
					<div class="col-md-6">
	    				<label for="writer" class="form-label">작성자</label>
	  				</div>
	  				
	  				<div class="col-md-6">
	  					<label for="writer" class="form-label">${detail.writer}</label>
	  				</div>
	  				
	  				<div class="col-md-6">
	    				<label for="title" class="form-label">제목</label>
	  				</div>
	  				
	  				<div class="col-md-6">
	  					<label for="title" class="form-label">${detail.title}</label>
	  				</div>
	  				
	  				<div class="col-md-6">
	    				<label for="contents" class="form-label">내용</label>
	  				</div>
	  				
	  				<div class="col-md-6">
	  					<label for="contents" class="form-label">${detail.contents}</label>
	  				</div>
	  				
	  				<div class="col-md-6">
	    				<label for="regDate" class="form-label">등록일</label>	    				
	  				</div>
	  				
	  				<div class="col-md-6">
	  					<label for="regDate" class="form-label">${detail.regDate}</label>
	  				</div>
	  				
	  				<div class="col-md-6">
	    				<label for="hit" class="form-label">조회수</label>
	  				</div>
	  				
	  				<div class="col-md-6">
	  					<label for="hit" class="form-label">${detail.hit}</label>
	  				</div>
	  				
	  				
	  				<div>
						<form action="./qnaUpdate" id="frm">
							<input type="hidden" name="num" value="${detail.num}">
							<button id="update" type="submit" class="btn btn-primary col-md-2 mt-4">글 수정</button>
							<button id="delete" type="button" class="btn btn-primary col-md-2 mt-4">글 삭제</button>
						</form>
					</div>
					
					<div class="row col-md-2 mx-auto mt-5">
						<a class="btn btn-primary" href="./qnaList">글 목록</a>
					</div>
					
					<div class="row col-md-2 mx-auto mt-5">
						<a class="btn btn-primary" href="./qnaReply?num=${detail.num}">답글 작성</a>
					</div>
					
				</div>
			</div>
		</div>
		
		<script src="../resources/js/boardForm.js"></script>
		<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>