<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
<!-- Common CSS -->
<c:import url="../template/common_css.jsp"></c:import>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
</head>
<body>
<!-- Header -->
<c:import url="../template/header.jsp"></c:import>
<header style="margin-top: 200px;">

<!-- Main content -->
<main class="container my-5">
  <div class="row">
    <div class="col-md-8">
      <h1 class="my-4">책의 자세한 내용</h1>
      <c:if test="${not empty dto}">
        <h3>상품 번호 : ${dto.num}</h3>
        <h3>상품 이름 : ${dto.title}</h3>
        <h3>상품 내용 : ${dto.info}</h3>
        <h3>상품 가격 : ${dto.price}</h3>
        <h3>카테고리 : ${dto.categoryNum}</h3>
        

        <div class="row">
          <c:forEach items="${dto.productImgDTOs}" var="fileDTO">
            <div class="col-md-4 mb-4">
              <img src="../resources/images/${fileDTO.save}" class="img-fluid">
            </div>
          </c:forEach>
        </div>
       
		
        <form action="./update" id="frm">
          <input type="hidden" name="num" value="${dto.num}">
          <c:if test="${not empty member}">
            <c:if test="${member.roleDTO.roleName eq 'ADMIN'}">
              <button id="delete" type="button" class="btn btn-outline-danger"><a href="./delete?num=${dto.num}">상품삭제</a></button>
              <button id="update" type="submit" class="btn btn-outline-primary">상품수정</button>
            </c:if>
          </c:if>
          <c:if test="${not empty member}">
	          <button id="addToCartBtn" data-member-id="${member.id}" data-product-id="${dto.num}" type="button" class="btn btn-outline-primary">장바구니</button>          
          </c:if>
          
          <button id="list" type="button" class="btn btn-outline-secondary"><a href="./list">목록으로</a></button>
        </form>
      </c:if>
    </div>
     <div class="col-md-4">
      <div class="card my-4">
        <div class="card-header">이 책이 좋아요!</div>
        <div class="card-body">
          <p class="card-text">좋아요 수: 100</p>
          <a href="#" class="btn btn-primary">좋아요</a>
        </div>
      </div>
      <div class="card my-4">
        <div class="card-header">이 책과 관련된 할인사이트</div>
        <div class="card-body">
          <ul class="list-group">
            <li class="list-group-item"><a href="https://search.shopping.naver.com/book/home">네이버 도서</a></li>
            <li class="list-group-item"><a href="https://www.kyobobook.co.kr/">교보문고 도서</a></li>
            <li class="list-group-item"><a href="http://www.yes24.com/">YES24 도서</a></li>
            <li class="list-group-item"><a href="https://www.aladin.co.kr/">알라딘 도서</a></li>
            <li class="list-group-item"><a href="http://www.ypbooks.co.kr/">영품문고 도서</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
	
	  
   

</main>
</header>



<c:import url="../template/common_js.jsp"></c:import>
<c:import url="../template/bottom.jsp"></c:import>
<script src="/resources/js/productCart.js"></script>
<script src="../../../resources/js/productDetail.js"></script>
</body>
</html>