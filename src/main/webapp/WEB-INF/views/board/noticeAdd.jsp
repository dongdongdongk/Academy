<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeAdd</title>
</head>
<body>
	
	<form action="./add" method="post">
		<div class="mb-3">
			<label for="writer" class="form-label">작성자</label>
			<input type="text" name="writer" id="writer">
		</div>
		
		<div class="mb-3">
			<label for="title" class="form-label">제목</label>
			<input type="text" name="title" id="title">
		</div>
		
		<div class="mb-3">
			<label for="contents" class="form-label">내용</label>
			<textarea name="contents" id="contents" ></textarea>
		</div>
		
		<div class="mb-3">
			<button type="submit">추가</button>
		</div>
	</form>
	



</body>
</html>