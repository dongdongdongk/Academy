<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/common_css.jsp"></c:import>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

	<header style="margin-top: 200px;">
		<div class="container-fluid">
			<div class="row justify-content-center my-4">
				<h1 class="col-md-7 text-center">상품 업데이트 Page</h1>
			</div>
		
		 	<div class="row justify-content-center my-4">
		
				<form class="col-md-7" action="./update" method="post" enctype="multipart/form-data">
					<input type="hidden" name="num" value="${dto.num}">
					
					<div class="mb-3">
						<label for="title" class="form-label">제품명</label>
			 			<input class="form-control" type="text" name="title" value="${dto.title}"  id="title" placeholder="변경할 제품명 입력">
			 		</div>
			 		<div class="mb-3">
			 			<label for="price" class="form-label">가격</label>
						<input class="form-control" type="text" name="price" value="${dto.price}" id="price" placeholder="변경할 가격 입력">
					</div>
					<div class="mb-3">
						<label for="info" class="form-label">상세설명</label>
						<textarea  name="info" class="form-control" id="info" placeholder="설명 입력" rows="7">${dto.info}</textarea>
					</div>

					<div id="fileList">
						<a class="btn" id="fileAdd">첨부파일</a>
						<c:forEach items="${dto.productImgDTOs}" var="fileDTO">
							<div class="input-group mb-3 my-3">
								<div class="input-group-text">
									<input class="form-check-input mt-0 deleteCheck" type="checkbox" name="fileNum" value="${fileDTO.fileNum}" aria-label="Checkbox for following text input">
								</div>
								<input type="text" disabled value="${fileDTO.upLoad}" class="form-control" aria-label="Text input with checkbox">
							</div>
						</c:forEach>	
					</div>
				
					<!-- <div class="mb-3" id="fileList">
						
					</div> -->
	
					<div class="mb-3">
						<input class="btn btn-info" type="submit" value="수정">
					</div>
				</form>
			</div>	
		</div>
	</header>
	

<script src="../../../resources/js/fileManger.js"></script>
<c:import url="../template/common_js.jsp"></c:import>
<c:import url="../template/bottom.jsp"></c:import>
<script>
	setMax(1);
	setCount(1);

	$("#info").summernote();
</script>			
</body>
</html>