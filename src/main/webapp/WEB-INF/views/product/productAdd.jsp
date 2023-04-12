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
<link rel="stylesheet" href="/resources/css/productAdd.css">
</head>
<body class="courses-page">
            <div class="page-header">
              <div class="page-header-overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <header class="entry-header">
                                    <h1>상품 등록</h1>
                                </header>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<c:import url="../template/header.jsp"></c:import>
<header style="margin-top: 50px;">
<div class="container-fluid">

	<div class="row justify-content-center my-4">
		<form class="col-md-7" id="frm" action="./productAdd" method="post" enctype="multipart/form-data">
			
			<div class="mb-3">
			  <label for="title" class="form-label">제품명</label>
			  <input type="text" name="title" class="form-control" id="title" placeholder="제품명 입력" required>
			  <div id="titleResult"></div>
			</div>
			
			<div class="mb-3">
			  <label for="price" class="form-label">가격</label>
			  <input type="text" name="price" class="form-control" id="price" placeholder="가격 입력">
			</div>
	
			<div class="mb-3">
			  <label for="info" class="form-label">상세 설명</label>
			  <textarea name="info" class="form-control" id="info" placeholder="설명 입력" rows="7"></textarea>
			</div>
			
			<div id="fileList">
				<button type="button" id="fileAdd">ADD</button><td>사진등록</td>
			</div>	
			
			<select class="form-select" name="categoryNum" id="categoryNum">
				<option value="1">책</option>
				<option value="2">강의</option>
			</select>

			<div class="mb-3">
				<button id="addProduct" class="my btn btn-danger" type="submit">등록</button>
			</div>
		</form>
	</div>
</div>
</header>
<script src="../resources/js/fileManger.js"></script>
<script src="../../../resources/js/productAdd.js"></script>

<c:import url="../template/common_js.jsp"></c:import>
<c:import url="../template/bottom.jsp"></c:import>

<script>
	setMax(1);
	$("#info").summernote();
	// setParam('f');
</script>
</body>
</html>