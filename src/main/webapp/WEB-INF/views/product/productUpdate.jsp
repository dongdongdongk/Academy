<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/common_css.jsp"></c:import>
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
				
		<%-- 		<input type="hidden" name="num" value="${dto.num}"> --%>
				
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
					<c:forEach items="${dto.productImgDTOs}" var="fileDTO">
						<div class="input-group mb-3 my-3">
							<div class="input-group-text">
								<input class="form-check-input mt-0 deleteCheck" type="checkbox" name="fileNum" value="${fileDTO.fileNum}" aria-label="Checkbox for following text input">
							</div>
							<input type="text" disabled value="${fileDTO.upLoad}" class="form-control" aria-label="Text input with checkbox">
						</div>
					</c:forEach>	
				</div>


				<div class="mb-3">
					<button type="button" id="fileAdd">ADD</button><td>사진등록</td>
					</div>
				</div>	
				<fieldset>
				
					<input class="btn btn-info" type="submit" value="수정">
					
				</fieldset>
			<!-- 	<div class="mb-3">
					<button class="my btn btn-danger" type="submit">등록</button>
				</div> -->
		</form>
		</div>
</div>
</header>	
<script src="../resources/js/fileManger.js"></script>
<c:import url="../template/common_js.jsp"></c:import>
<script>
	setMax(1);
</script>			
</body>
</html>