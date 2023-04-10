<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 정보</title>
<c:import url="../template/common_css.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/qnaReply.css">
</head>
<body>

	<c:import url="../template/header.jsp"></c:import>

	<header style="margin-top: 200px;">	
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
		  				<c:if test="${member.id eq detail.writer}">
							<form action="./qnaUpdate" id="frm">
								<input type="hidden" name="num" value="${detail.num}">
								<button id="update" type="submit" class="btn btn-primary col-md-2 mt-4">글 수정</button>
								<button id="delete" type="button" class="btn btn-primary col-md-2 mt-4">글 삭제</button>
							</form>
						</c:if>
					</div>
				</div>
			</div>
			
			<div class="my-5">
				<div class="mb-3">
					<textarea class="form-control" id="replyContents" rows="3"></textarea>
				</div>
				
				<div class="row btns">
					<a class="btn btn_list" href="./qnaList">글 목록</a>
					<a class="btn" id="replyAdd" data-qna-num="${detail.num}">댓글 작성</a>
				</div>
			</div>

			<div class="container-fluid my-5" id="commentListResult">
			
			</div>
		</div>
	</header>	

		
		
		<!-- Update Form Modal -->
		<!-- Button trigger modal -->
		<!-- Modal -->
		<div class="modal fade" id="contentsModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">글 수정</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="form-floating">
						<textarea class="form-control" placeholder="Leave a comment here" id="contents"></textarea>
						<label for="contents">내용</label>
					</div>
				</div>
				<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="closeModal">취소</button>
				<button type="button" class="btn btn-primary" id="contentsConfirm">확인</button>
				</div>
			</div>
			</div>
		</div>
	
		<script src="../resources/js/boardForm.js"></script>
		<c:import url="../template/kakao.jsp"></c:import>
		<c:import url="../template/common_js.jsp"></c:import>
		<c:import url="../template/bottom.jsp"></c:import>
		<script src="/resources/js/qnaReply.js"></script>
</body>
</html>