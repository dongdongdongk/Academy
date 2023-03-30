<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EventAdd</title>
<c:import url="../template/common_css.jsp"></c:import>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
</head>
<body>
	
	
	<div class="container-fluid my-5">
		<div class="row mb-4">
			<h3
				class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">EventAdd</h3>
		</div>

		<div class="row col-md-7 mx-auto">
			<form class="row g-3" action="./add" method="post"
				enctype="multipart/form-data">
				<div class="col-md-6">
					<label for="writer" class="form-label">작성자</label> <input
						type="text" name="writer" class="form-control" id="writer" readonly value="${member.id}">
				</div>

				<div class="col-md-12 mt-5">
					<label for="title" class="form-label">제목</label> <input type="text"
						class="form-control" name="title" id="title"
						placeholder="제목을 입력하세요">
				</div>
				
				<div class="col-md-12 mt-5">
					<label for="startDate" class="form-label">시작날짜</label> <input type="date"
						class="form-control" name="startDate" id="startDate"
						placeholder="시작날짜 입력">
				</div>
				
				
				<div class="col-md-12 mt-5">
					<label for="endDate" class="form-label">종료날짜</label> <input type="date"
						class="form-control" name="endDate" id="endDate"
						placeholder="종료날짜 입력">
				</div>

				<div class="col-md-12 mt-5">
					<label for="contents" class="form-label">내용</label>
					<textarea class="form-control" name="contents" id="contents"
						placeholder="내용을 입력하세요"></textarea>
				</div>
				
				

				<div id="fileList" class="my-5">
					<div class="input-group mb-3">
						<input type="file" class="form-control" id="files" name="files">
						<button type="button" class="btn btn-outline-danger">X</button>
					</div>
					<button type="button" class="btn btn-primary" id="fileAdd">ADD</button>

				</div>
				<div class="row col-md-2 mx-auto mt-5">
					<button type="submit" class="btn btn-primary">글등록</button>
				</div>
				<a href="./list">취소</a>
			</form>
		</div>
	</div>

		<c:import url="../template/common_js.jsp"></c:import>
	<script>
		$("#contents").summernote();
	</script>


	<!-- <form action="./add" method="post" enctype="multipart/form-data">
		<div class="mb-3">
			<label for="title" class="form-label">제목</label>
			<input type="text" name="title" id="title">
		</div>
		<div class="mb-3" hidden="">
			<label for="writer" class="form-label">작성자</label>
			<input type="text" name="writer" id="writer">
		</div>
		
		
		<div class="mb-3">
			<label for="contents" class="form-label">내용</label>
			<textarea name="contents" id="contents" ></textarea>
		</div>
		
		 <div id="fileList" class="my-5">
 				<div class="input-group mb-3">
					<input type="file" class="form-control" id="files" name="files">
					<button type="button" class="btn btn-outline-danger">X</button>
				</div>  
				<button type="button" class="btn btn-primary" id="fileAdd">ADD</button>

		</div>
		
		
		<div class="mb-3">
			<button type="submit">등록</button>
		</div>
	</form>
	
	<a href="./list">취소</a> -->
	
</body>
</html>