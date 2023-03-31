<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>장바구니</title>
<c:import url="../template/common_css.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/cart.css">
</head>
<body>
   <c:import url="../template/header.jsp"></c:import>
	<div class="container-fluid page-content">
		<div class="row justify-content-center">
			<h1 class="col-md-7 my-5">장바구니</h1>
		</div>
		
	    <!-- 성공 메시지 출력 -->
	    <c:if test="${not empty successMessage}">
	        <div class="alert alert-success" role="alert">
	            ${successMessage}
	        </div>
	    </c:if>
	
	    <!-- 에러 메시지 출력 -->
	    <c:if test="${not empty errorMessage}">
	        <div class="alert alert-danger" role="alert">
	            ${errorMessage}
	        </div>
	    </c:if>
		
		<div class="container-fluid">
			<div class="row carts" style="text-align: center;">
				<table class="table table-hover" style="width: 70%; margin: auto; border-bottom: 1px solid #D5D5D5;">
					<thead>
						<tr>
							<th>상품번호</th>
							<th>상품명</th>
							<th>이미지</th>
							<th>가격</th>
							<th>삭제</th>
						</tr>
					</thead>
					<tbody>
						
						<c:choose>
							<c:when test="${not empty member}">
						  		<c:forEach items="${list}" var="dto">
						  			<c:if test="${member.id eq dto.id}">
										<tr>
											<td>${dto.num}</td>
											<c:forEach items="${dto.productDTOs}" var="product">
												<td>${product.title}</td>
												<td><img src="../resources/upload/product/${product.productImgDTOs.save}" class="img-fluid"></td>
												<td>${product.price}</td>
											</c:forEach>
					                    	<td><button data-cart-id="${dto.cartNum}" class="deleteBtn btn btn-danger">삭제</button></td>
										</tr>
									</c:if>
								</c:forEach>
				  			</c:when>
				  		
					  		<c:otherwise>
					  			<tr><td colspan="5"><h3>로그인을 해주세요.</h3></td></tr>
					  		</c:otherwise>
				  		</c:choose>
					</tbody>
	                <tfoot>
	                    <tr>
	                        <td colspan="4" style="text-align: right;"><strong>총 금액</strong></td>
	                        <td><h3>${not empty sumPrice ? sumPrice : 0} 원</h3></td>
	                    </tr>
	                </tfoot>
				</table>
			</div>
			
			<div class="row btns">
				<a href="#" class="btn btn_order">주문하기</a>
				<a href="/product/list" class="btn btn_list">상품보기</a>
			</div>	
		</div>
	</div>
	<c:import url="../template/common_js.jsp"></c:import>
    <script src="/resources/js/productCart.js"></script>
</body>
</html>
