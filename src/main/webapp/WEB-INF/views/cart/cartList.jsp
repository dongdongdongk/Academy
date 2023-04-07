<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cart</title>
<c:import url="../template/common_css.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/cart.css">
</head>
<body class="courses-page">
            <div class="page-header">
              <div class="page-header-overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <header class="entry-header">
                                    <h1>장바구니</h1>
                                </header><!-- .entry-header -->
                            </div><!-- .col -->
                        </div><!-- .row -->
                    </div><!-- .container -->
                </div><!-- .page-header-overlay -->
            </div><!-- .page-header -->
   <c:import url="../template/header.jsp"></c:import>

	<hr>
	
	<div class="container-fluid">
		<div class="row carts" style="text-align: center;">
			<!-- <h1 class="page-header">장바구니</h1> -->
			<table class="table table-hover" style="width: 70%; margin: auto; border-bottom: 1px solid #D5D5D5;">
				<thead>
					<tr>
						<th>상품번호</th>
						<th>상품명</th>
						<th>이미지</th>
						<th>가격</th>
						<th>수량</th>
						<th>총 가격</th>
						<th>삭제여부</th>
					</tr>
				</thead>
				<tbody>
					<input type="hidden" id="prdNum10">

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
											<td> <div class="form_spinner_box size_sm">
							        <span class="ui-spinner ui-widget ui-widget-content ui-corner-all ui-spinner-right">
							        <button id="btnN${dto.cartNum}" data-cart-id="${dto.cartNum}"  type="button" class="btn btn-outline-success btnN">
							       <span class="offscreen ui-icon ui-icon-triangle-1-n">-</span></button>
							        
									<input type="text" id="quantity${dto.cartNum}" value="${dto.quantity}" class="input is-primary" title="수량" autocomplete="off" style="width: 40px;">
							        
							        <button id="btnP${dto.cartNum}" data-cart-id="${dto.cartNum}"  type="button" class="btn btn-outline-success btnP">
							        <span class="offscreen ui-icon ui-icon-triangle-1-s">+</span></button></span>
							        </div></td>
											<td>${product.price*dto.quantity}</td>
										
                                        </c:forEach>
				            
									
        
        							<td><button data-cart-id="${dto.cartNum}" class="deleteBtn btn btn-danger">X</button></td>
        							<td>
									

									</td>								
										</tr>
									
								</c:if>
							</c:forEach>
							
							</c:when>
			  		
				  		<c:otherwise>
				  			<tr><td colspan="5"><h3>로그인을 해주세요.</h3></td></tr>
				  		</c:otherwise>
			  		</c:choose>
				
					
				
					
	

					<c:if test="${not empty sumPrice}">
						<h3>총 금액 : ${sumPrice}원</h3>
					</c:if>
					
					<c:if test="${empty sumPrice}">
						<h3>총 금액 : 0원</h3>
					</c:if>
			  		
				</tbody>
			</table>
		</div>
		
		<div class="row btns">
			<a href="#" class="btn btn_order">주문하기</a>
			<a href="/product/list" class="btn btn_list">상품보기</a>
		</div>
		
	
	
	<c:import url="../template/common_js.jsp"></c:import>
	<c:import url="../template/bottom.jsp"></c:import>
    <script src="/resources/js/productCart.js"></script>
</body>
</html>
