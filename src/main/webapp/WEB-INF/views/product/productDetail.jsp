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
<link rel="stylesheet" href="/resources/css/productDetail.css">
</head>
<style>
.product-price {
  font-size: 32px;
  font-weight: bold;
  color: #fff;
  text-align: center;
  padding: 10px;
  border-radius: 5px;
  background-color: #11cc8e;
  box-shadow: 0px 5px 5px rgba(0, 0, 0, 0.2);
  text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);
}
.custom-color {
    background-color: #0d7dec;
}
.ii{
display : inline-block;
}
</style>
<body class="courses-page">
            <div class="page-header">
              <div class="page-header-overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <header class="entry-header">
                                    <h1>상품 설명</h1>
                                </header>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<!-- Header -->
<c:import url="../template/header.jsp"></c:import>
<header style="margin-top: 50px;">

<div class="col-md-3" style="margin-left: 1px;" style="height: 30px;" style="width: 30px;">
      
      <div id="sidebar3" class="card my-3" id="">
        <div class="card-header custom-color">이 책과 관련된 할인사이트</div>
        <div class="card-body">
          <ul class="list-group">
            <li class="list-group-item"><a href="https://search.shopping.naver.com/book/home">네이버 도서</a></li>
            <li class="list-group-item"><a href="https://www.kyobobook.co.kr/">교보문고 도서</a></li>
            <li class="list-group-item"><a href="http://www.yes24.com/">YES24 도서</a></li>
          </ul>
        </div>
      </div>
    </div>

<!-- Main content -->
<main class="container my-3" style="margin-right: 10px;" style="margin-top: 50px;">

    
  <div class="row">
    <div class="col-md-8">
     
      <c:if test="${not empty dto}">
        <c:forEach items="${dto.productImgDTOs}" var="fileDTO">
            <div class="col-md-3 mb-3 ii">
              <img  src="../resources/images/${fileDTO.save}" class="product-price" style="width: 150%;">
            </div>
        </c:forEach>
      
	    <div style="display: flex; justify-content: space-between; align-items: center;">
		<h3 class="product-price" style="width: 30%; margin-right: 100px;">${dto.title}</h3>
		<h3 class="product-price" style="width: 20%; margin-right: 50px;">${dto.price}</h3>
		</div>
        <h3 class="product-price">${dto.info}</h3>
      
		
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
   
  </div>
	
	  
   

</main>
</header>


<c:import url="../template/topBtn.jsp"></c:import>
<c:import url="../template/common_js.jsp"></c:import>
<c:import url="../template/bottom.jsp"></c:import>
<c:import url="../template/kakao.jsp"></c:import>
<script src="/resources/js/productCart.js"></script>
<script src="../../../resources/js/productDetail.js"></script>
</body>
</html>