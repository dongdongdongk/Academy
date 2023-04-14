<%@page import="com.ac.home.notice.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeAdd</title>
<c:import url="../template/common_css.jsp"></c:import>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="/resources/css/style.css">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<script src="/resources/js/summernoteAdd.js"></script>
</head>
<body>

	<div class="container-fluid my-5">
		<div class="row mb-4">
			<h3
				class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">NoticeAdd</h3>
		</div>

		<div class="row col-md-7 mx-auto">
			<form class="row g-3" action="./add" method="post"
				enctype="multipart/form-data">
				<div class="col-md-4">
					<label for="writer" class="form-label strongFont2">작성자</label> <input
						type="text" name="writer" class="form-control" id="writer" readonly value="${member.id}">
				</div>

				<div class="col-md-12 mt-3">
					<label for="title" class="form-label strongFont2">제목</label> <input type="text"
						class="form-control" name="title" id="title"
						placeholder="제목을 입력하세요">
				</div>

				<div class="col-md-12 mt-3">
					<label for="contents" class="form-label strongFont2">내용</label>
					<textarea class="form-control " name="contents" id="contents"
						placeholder="내용을 입력하세요"></textarea>
				</div>

				<div id="fileList" class="my-5">
					<div class="input-group mb-3">
						<input type="file" class="form-control" id="files" name="files">
						<button type="button" class="btn btn-outline-danger">X</button>
						
					</div>
					<div class="fontlight">
					*업로드 가능 확장자<br>
					 : jpg, jpeg, gif, png, pdf, hwp, txt, doc, docx, xls, xlsx, ppt, pptx, zip, alz, 7z, rar, egg, mp3<br>
					 <br>
					*에디터에 삽입된 파일을 삭제하면 정상 출력되지 않습니다.
					
					</div>
					

				</div>
				<div class="col-md-12 mt-2">
					<div class="d-flex justify-content-between">
						<button type="submit" class="image-button color-5 wow fadeIn mr-3" data-wow-delay="0.1s">
							<img src="/resources/images/pen2.png" alt="Button icon">
							<span>글등록</span>
						</button>
		
						<button type="button" class="image-buttonclose color-5 wow fadeIn" data-wow-delay="0.1s" onclick="location.href='./list'">
							<img src="/resources/images/close.png" alt="Button icon">
							<span>취소</span>
						</button>
					</div>
				</div>
				
				
		
			
			
			</form>
		</div>
	</div>

	<c:import url="../template/common_js.jsp"></c:import>
	<script>
		$("#contents").summernote({
			height : 500,
			width : 1187.48
		});
	</script>
	
<c:import url="../template/common_js.jsp"></c:import>
<c:import url="../template/bottom.jsp"></c:import>
</body>
</html>