<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 정보</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
<c:import url="../template/common_css.jsp"></c:import>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
</head>
</head>
<body class="courses-page">
            <div class="page-header">
              <div class="page-header-overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <header class="entry-header">
                                    <h1>${dto.title}</h1>
                                </header><!-- .entry-header -->
                            </div><!-- .col -->
                        </div><!-- .row -->
                    </div><!-- .container -->
                </div><!-- .page-header-overlay -->
            </div><!-- .page-header -->
<c:import url="../template/header.jsp"></c:import>
<header style="margin-top: 50px;">	
		
			<div class="row col-md-7 mx-auto">
				<div class="row g-3">
					 <h3>${dto.info}</h3>
					 
					 
				</div>
			</div>
		
		<form action="./ordersUpdate" id="frm">
          <input type="hidden" name="orderNum" value="${dto.orderNum}">
          <c:if test="${not empty member}">
            <c:if test="${member.roleDTO.roleName eq 'ADMIN'}">
              <button id="delete" type="button" class="btn btn-outline-danger"><a href="./delete?orderNum=${dto.orderNum}">상품삭제</a></button>
              <button id="ordersUpdate" type="submit" class="btn btn-outline-primary">상품수정</button>
            </c:if>
          </c:if>
       
           <button id="list" type="button" class="btn btn-outline-secondary"><a href="./ordersList">목록으로</a></button>
        </form>
		 
		</header>
<c:import url="../template/common_js.jsp"></c:import>
<c:import url="../template/bottom.jsp"></c:import>
<c:import url="../template/kakao.jsp"></c:import>		
		<script src="../resources/js/boardForm.js"></script>
		<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>
	  				
	  				
	  				
	  				
	  				
	  			
	  				
	  				
	  				
	  				
	  				
	  				
	  				
				
					