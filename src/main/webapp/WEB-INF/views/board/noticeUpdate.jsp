<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div >
		<form class="col-md-7" action="./update" method="post" >
			<input type="hidden" name="num" value="${dto.num}">
		 	<div class="mb-3">
			 
			 
			  <label for="writer" class="form-label"></label>
			  <input type="hidden" name="writer" readonly value="${dto.writer}"id="writer">
			</div> 
			
			<div class="mb-3">
			  <label for="title" class="form-label">제목</label>
			  <input type="text" name="title" class="form-control" value="${dto.title}" id="title" placeholder="제목 입력">
			</div>
	
			<div class="mb-3">
			  <label for="contents" class="form-label">내용</label>
			  <textarea name="contents" class="form-control" id="contents" placeholder="내용 입력" rows="7">${dto.contents}</textarea>
			</div>

			<div class="mb-3">
				<label for="checked" class="form-label">상단고정</label>
				설정<input type="radio" name="checked" class="form-control" value="1" id="checked" >
				해제<input type="radio" name="checked" class="form-control" value="0" id="checked" >
			  </div>

			
		<div class="mb-3">
			<button type="submit">수정</button>
		</div>
		</form>
	</div>
	<a href="./list">취소</a>

</body>
</html>