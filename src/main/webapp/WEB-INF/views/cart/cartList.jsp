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
							        <button id="btnP${dto.cartNum}" data-cart-id="${dto.cartNum}"  type="button" class="decrease ui-spinner-button ui-spinner-down ui-corner-br ui-button ui-widget btnP">
							        <span class="offscreen ui-icon ui-icon-triangle-1-s">+</span></button>
							        
									<input type="number" id="quantity${dto.cartNum}" value="${dto.quantity}" class="form_spinner ui-spinner-input" title="수량" autocomplete="off">
							        <button id="btnN${dto.cartNum}" data-cart-id="${dto.cartNum}"  type="button" class="increase ui-spinner-button ui-spinner-up ui-corner-tr ui-button ui-widget btnN">
							       <span class="offscreen ui-icon ui-icon-triangle-1-n">-</span></button></span>
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
		<!-- paging -->
		<div class="row col-md-7 mx-auto">
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous" data-board-page="1"> <span
							aria-hidden="true">&laquo;</span>
					</a></li>


					<li class="page-item ${pager.before?'disabled':''}"><a
						class="page-link" href="#" aria-label="Previous"
						data-board-page="${pager.startNum-1}"> <span
							aria-hidden="true">&lsaquo;</span>
					</a></li>

					<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
						<li class="page-item"><a class="page-link" href="#"
							data-board-page="${i}">${i}</a></li>
					</c:forEach>

					<li class="page-item ${pager.after eq false ? 'disabled':''}">
						<%-- ${pager.after eq false ? 'disabled':''} --%> <a
						class="page-link" href="#" aria-label="Next"
						data-board-page="${pager.lastNum+1}"> <span aria-hidden="true">&rsaquo;</span>
					</a>
					</li>

					<li class="page-item">
						<%-- ${pager.after eq false ? 'disabled':''} --%> <a
						class="page-link" href="#" aria-label="Next"
						data-board-page="${pager.totalPage}"> <span aria-hidden="true">&raquo;</span>
					</a>
					</li>

				</ul>
			</nav>
		</div>


		<!-- 검색창 -->
		<div class="row col-md-7 mx-auto">
			<form class="row g-3" action="./list" method="get" id="searchForm">
				<input type="hidden" name="page" value="1" id="page">
				<div class="col-auto">
					<label for="kind" class="visually-hidden">Kind</label> <select
						class="form-select" name="kind" id="kind"
						aria-label="Default select example">
						<option value="title" ${pager.kind eq 'title'? 'selected':''}>상품 이름</option>
						<option value="contents" ${pager.kind eq 'info'? 'selected':''}>내용</option>
						<%-- <option value="writer" ${pager.kind eq 'writer'? 'selected':''}>Writer</option> --%>
					</select>
				</div>
				<div class="col-auto">
					<label for="search" class="visually-hidden">Search</label> 
					<input type="text" class="form-control" value="${pager.search}"
						name="search" id="search" placeholder="검색어를 입력하세요">
				</div>
				<div class="col-auto">
					<button type="submit" class="btn btn-primary mb-3">검색</button>
				</div>
			</form>	
	</div>
	
	
	<c:import url="../template/common_js.jsp"></c:import>
	<c:import url="../template/bottom.jsp"></c:import>
    <script src="/resources/js/productCart.js"></script>
</body>
</html>
