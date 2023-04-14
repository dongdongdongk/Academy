<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 등록</title>
<c:import url="../template/common_css.jsp"></c:import>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<header style="margin-top: 200px;">	
	<div class="container-fluid my-5">
		<div class="row mb-4">
			<h3 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">질문응답등록</h3>
		</div>
	
		<div class="row col-md-7 mx-auto">
			<form class="row g-3" action="./qnaAdd" method="post">
				<div class="col-md-6">
    				<label for="writer" class="form-label">작성자</label>
    				<input type="text" name="writer" class="form-control" id="writer" value="${member.id}" readonly="readonly">
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

				<div class="col-md-12 mt-6">
					<div class="d-flex justify-content-between mt-4">
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
</header>	
	<c:import url="../template/common_js.jsp"></c:import>
	<c:import url="../template/bottom.jsp"></c:import>
	<script>
		$("#contents").summernote({
			height : 500,
			width : 1139.95
		});
	</script>
</body>
</html>