<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 정보</title>
<c:import url="../template/common_css.jsp"></c:import>
<c:import url="../template/tempcss.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/qnaReply.css">
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>

	<c:import url="../template/header.jsp"></c:import>

	<header style="margin-top: 200px;">	
		<div class="container-fluid my-5">
			
			
			<div>
				
				<div class="col-md-10 mx-auto">
					<h1 class="wow fadeInUp" data-wow-delay="0.1s"
					style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">${detail.title}</h1>
					<div class="border-bottom border-dark pb-4 pt-4 wow fadeInUp" data-wow-delay="0.1s"
					style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
						<div class="strongFont3 wow fadeInUp" data-wow-delay="0.1s"
						style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
							<span class="mr-4">작성자</span>
							<span class="mr-4 fontlight">${detail.writer}</span>
							<span class="mr-4">작성일</span>
							<span class="mr-4 fontlight">${detail.regDate}</span>
							<span class="mr-4">조회수</span>
							<span class="mr-4 fontlight">${detail.hit}</span>
						</div>
					</div>
					
					<div class="mt-5 mb-5 wow fadeInUp" data-wow-delay="0.1s"
					style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
						<p>${detail.contents}</p>
					</div>

					<div class="mt-6 mb-6 ">
						<button type="button" class="image-buttonclosewhite color-5 wow fadeInUp" data-wow-delay="0.1s"
						style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;" onclick="location.href='./qnaList'">
							<span>목록</span>
						</button>	
					</div>
					
					<div class="space">

					</div>


					
					<div class="my-5">
						<p class="strongFont4 mt-5 wow fadeIn" data-wow-delay="0.1s">댓글</p>
						<div class="mb-3 d-flex">
							<textarea class="form-control" id="replyContents" rows="3"></textarea>
							
							<button type="button" id="replyAdd" data-qna-num="${detail.num}" class="image-buttoncloselist color-5 wow fadeIn" data-wow-delay="0.1s">
								<span>등록</span>
							</button>	
							
						
						</div>
						<div>
							<c:if test="${member.id eq detail.writer}">
								<form action="./qnaUpdate" id="frm"> 
									<input type="hidden" name="num" value="${detail.num}">
									<div class="d-flex">
										<button type="submit" class="image-button color-5 wow fadeIn mr-3" id="update" data-wow-delay="0.1s">
											<img src="/resources/images/pen2.png" alt="Button icon">
											<span>글수정</span>
										</button>
							
										<button type="button" id="delete" class="image-buttonclose wow fadeIn mr-4" data-wow-delay="0.1s">
											<img src="/resources/images/close.png" alt="Button icon">
											<span>글삭제</span>
										</button>
									</div>
								</form>
							  </c:if>
						 </div>
						 <div class="container-fluid my-5 mx-auto" id="commentListResult" style="margin-left: -15px !important;">
						 
						 </div>
					
					</div>
					
					<!-- <button id="update" type="submit" class="btn btn-primary col-md-2 mt-4">글 수정</button>
						<button id="delete" type="button" class="btn btn-primary col-md-2 mt-4">글 삭제</button> -->
						
						
					
					
					 <!-- <div class="row btns">
						 <a class="btn btn_list" href="./qnaList">글 목록</a>
						 <a class="btn" id="replyAdd" data-qna-num="${detail.num}">댓글 작성</a>
					 </div> -->
				</div>
				
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
						<textarea class="form-control wow fadeIn" data-wow-delay="0.1s" placeholder="Leave a comment here" id="contents"></textarea>
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




		<c:import url="../template/topBtn.jsp"></c:import>
		<script src="../resources/js/boardForm.js"></script>
		<c:import url="../template/kakao.jsp"></c:import>
		<c:import url="../template/common_js.jsp"></c:import>
		<c:import url="../template/tempjs.jsp"></c:import>
		<c:import url="../template/bottom.jsp"></c:import>
		<script src="/resources/js/qnaReply.js"></script>
		<script src="../resources/js/temp/move.js"></script>
		<script src="/resources/js/commentListResult.js"></script>
</body>
</html>