<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<c:import url="../template/common_css.jsp"></c:import>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
</head>

<body class="courses-page">
	<c:import url="../template/header.jsp"></c:import>

	<div class="page-header">
		<div class="page-header-overlay">
			<div class="container">
				<div class="row">
					 <div class="col-12">
						<header class="entry-header">
							<h1>이벤트</h1>
						</header><!-- .entry-header -->
					</div><!-- .col -->
				</div><!-- .row -->
			</div><!-- .container -->
		</div><!-- .page-header-overlay -->
	</div><!-- .page-header -->

	<div class="container-fluid my-5">
		<div class="row mb-4">
			<h3 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">이벤트 수정</h3>
		</div>

		<div class="row col-md-7 mx-auto">
			<form class="row g-3" action="./update" method="post" enctype="multipart/form-data">
				<input type="hidden" name="num" value="${dto.num}">

				<div class="col-md-6">
					<label for="writer" class="form-label">작성자</label> <input
						type="text" name="writer" class="form-control" id="writer" readonly value="${member.id}">
				</div>

				<div class="col-md-12 mt-5">
					<label for="title" class="form-label">제목</label> <input type="text"
						class="form-control" name="title" id="title"
						placeholder="제목을 입력하세요" value="${dto.title}">
				</div>
				
				<div class="col-md-12 mt-5">
					<label for="startDate" class="form-label">시작날짜</label> <input type="date"
						class="form-control" name="startDate" id="startDate"
						placeholder="시작날짜 입력" value="${dto.startDate}">
				</div>
				
				
				<div class="col-md-12 mt-5">
					<label for="endDate" class="form-label">종료날짜</label> <input type="date"
						class="form-control" name="endDate" id="endDate"
						placeholder="종료날짜 입력" value="${dto.endDate}">
				</div>

				<div class="col-md-12 mt-5">
					<label for="contents" class="form-label">내용</label>
					<textarea class="form-control" name="contents" id="contents"
						placeholder="내용을 입력하세요">${dto.contents}</textarea>
				</div>
					
				<div class="col-md-12 mt-5">
					<label for="file" class="form-label">대표이미지</label>
				</div>

				<div id="fileList">
					<div class="input-group">
						<input type="file" class="form-control" id="files" name="files">
						<button type="button" class="btn btn-outline-danger">X</button>
					</div>
				</div>	

				<div class="row col-md-2 mx-auto mt-5">
					<button type="submit" class="btn btn-outline-success">글수정</button>
				</div>
			</form>
		</div>
	</div>

	<c:import url="../template/common_js.jsp"></c:import>
	<c:import url="../template/kakao.jsp"></c:import>
	<c:import url="../template/bottom.jsp"></c:import>
	<script>
		$("#contents").summernote();
	</script>
</body>
</html>