<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 업데이트</title>
<c:import url="../template/common_css.jsp"></c:import>
<c:import url="../template/tempcss.jsp"></c:import>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<header style="margin-top: 200px;">
	<div class="container-fluid my-5">
		<div class="row mb-4">
			<h3 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4 wow fadeInUp" data-wow-delay="0.1s"
			style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">수정 페이지</h3>
		</div>
	
		<div class="row col-md-7 mx-auto ">
			<form class="row g-3" action="./qnaUpdate" method="post">
				<input type="hidden" name="num" value="${dto.num}">
				<div class="col-md-6 wow fadeInUp" data-wow-delay="0.1s"
				style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
    				<label for="writer" class="form-label">작성자</label>
    				<input type="text" name="writer" class="form-control" id="writer" value="${dto.writer}" readonly="readonly">
  				</div>
  				
  				<div class="col-md-12 mt-5 wow fadeInUp" data-wow-delay="0.1s"
				  style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
    				<label for="title" class="form-label">제목</label>
    				<input type="text" class="form-control" value="${dto.title}" name="title" id="title" placeholder="제목을 입력하세요">
  				</div>
  				
  				<div class="col-md-12 mt-5 wow fadeInUp" data-wow-delay="0.1s"
				  style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
    				<label for="contents" class="form-label">내용</label>
    				<textarea class="form-control" name="contents" id="contents" placeholder="내용을 입력하세요">${dto.contents}</textarea>
  				</div>
				
				<div class="row col-md-2 mx-auto mt-5 wow fadeInUp" data-wow-delay="0.1s"
				style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
					<button type="submit" class="image-button color-5 wow fadeIn mr-3" id="update" data-wow-delay="0.1s">
						<img src="/resources/images/pen2.png" alt="Button icon">
						<span>글수정</span>
					</button>
				</div>
			</form>
		</div>
	</div>
</header>	
	<c:import url="../template/common_js.jsp"></c:import>
	<c:import url="../template/bottom.jsp"></c:import>
	<script>
		$("#contents").summernote();
	</script>
	<c:import url="../template/tempjs.jsp"></c:import>
	<script src="../resources/js/temp/move.js"></script>
</body>
</html>