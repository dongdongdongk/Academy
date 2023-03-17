<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EventAdd</title>
</head>
<body>
	
	<form action="./add" method="post" enctype="multipart/form-data">
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
	
	<a href="./list">취소</a>
	



</body>
</html>