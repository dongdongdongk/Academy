<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cart</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
   <c:import url="../template/header.jsp"></c:import>

	<hr>
	
	<div class="container-fluid">
		<div class="row my-5 col-md-1 mx-auto title">
			<h1>장바구니</h1>
		</div>
		
		<div class="row col-md-7 mx-auto">
			<table class="table">
			  	<thead class="table-dark">
			 		<tr>
						<th>상품번호</th><th>이미지</th><th>제목</th><th>가격</th>
					</tr>
			 	</thead>
			 	
			  	<tbody>
			  		<c:if test="${not empty member}">
				  		<c:forEach items="${list}" var="dto">
				  			<c:if test="${member.id eq dto.id}">
								<tr>
									<td>${dto.num}</td>
									<c:forEach items="${dto.productDTOs}" var="product">
										<td><img src="../resources/upload/product/${product.productImgDTOs.save}" class="img-fluid"></td>
										<td>${product.title}</td>
										<td>${product.price}</td>
									</c:forEach>
			                    	<td><button data-cart-id="${dto.cartNum}" class="deleteBtn btn btn-danger">X</button></td>
								</tr>
							</c:if>
						</c:forEach>
			  		</c:if>
			  		<c:if test="${empty member}">
			  			<h3>로그인 해주세요</h3>
			  		</c:if>
			  		
			  		<h3>총 금액 : ${sumPrice}</h3>
			  		<button class="btn btn-primary">결제하기</button>
			  	</tbody>
                
			</table>	
		</div>
	</div>
	
	<c:import url="../template/common_js.jsp"></c:import>
    <script src="/resources/js/productCart.js"></script>
</body>
</html>
