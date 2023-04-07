<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

					<hr>

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
							<table class="table table-hover"
								style="width: 70%; margin: auto; border-bottom: 1px solid #D5D5D5;">
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

									<c:choose>
										<c:when test="${not empty member}">
											<c:forEach items="${list}" var="dto">
												<c:if test="${member.id eq dto.id}">
													<tr>
														<td>${dto.num}</td>
														<c:forEach items="${dto.productDTOs}" var="product">
															<td>${product.title}</td>
															<td><img src="../resources/upload/product/${product.productImgDTOs.save}"
																	class="img-fluid"></td>
															<td>${product.price}</td>
															<td>
																<div class="form_spinner_box size_sm">
																	<span
																		class="ui-spinner ui-widget ui-widget-content ui-corner-all ui-spinner-right">
																		<button id="btnN${dto.cartNum}"
																			data-cart-id="${dto.cartNum}" type="button"
																			class="btn btn-outline-success btnN">
																			<span
																				class="offscreen ui-icon ui-icon-triangle-1-n">-</span></button>

																		<input type="text" id="quantity${dto.cartNum}"
																			value="${dto.quantity}"
																			class="input is-primary" title="수량"
																			autocomplete="off" style="width: 40px;">

																		<button id="btnP${dto.cartNum}"
																			data-cart-id="${dto.cartNum}" type="button"
																			class="btn btn-outline-danger btnP">
																			<span
																				class="offscreen ui-icon ui-icon-triangle-1-s">+</span></button></span>
																</div>
															</td>
															<td>${product.price * dto.quantity}</td>
														</c:forEach>
														<td><button data-cart-id="${dto.cartNum}"
																class="deleteBtn btn btn-danger">X</button></td>
														<td></td>
													</tr>
												</c:if>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<tr>
												<td colspan="5">
													<h3>로그인을 해주세요.</h3>
												</td>
											</tr>
										</c:otherwise>
									</c:choose>

								</tbody>
								<tfoot>
									<tr>
										<td colspan="4" style="text-align: right;"><strong>총 금액</strong></td>
										<td>
											<h3>${not empty sumPrice ? sumPrice : 0} 원</h3>
										</td>
									</tr>
								</tfoot>
							</table>
						</div>
						<div class="container-fluid">
							<div class="row justify-content-center">
								<div class="col-md-9">
									<div class="row carts">
									</div>
									<div class="row mt-4">
										<c:if test="${not empty member}">
											<div class="col-md-6 mb-4">
												<div class="card">
													<div class="card-header d-flex justify-content-between">
														<h4>배송 주소</h4>
													</div>
													<div class="card-body text-center">
														<p class="border border-primary">${address}, ${addressDetail}
														</p>
														<a href="../member/memberUpdate" class="btn">정보 수정하기</a>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="card">
													<div class="card-header d-flex justify-content-between">
														<h4>결제수단 선택</h4>
													</div>
													<div class="card-body text-center">
														<select class="form-select border border-primary"
															id="paymentMethod">
															<c:forEach items="${paymentMethods}" var="paymentMethod">
																<option value="${paymentMethod.info}">
																	${paymentMethod.info}</option>
															</c:forEach>
														</select>
														<a href="../member/payment/paymentmethodadd"
															class="btn mt-2">결제수단 추가</a>
													</div>
												</div>
											</div>
										</c:if>
									</div>
								</div>
							</div>
						</div>

						<div class="row btns">
							<a href="#" class="btn btn_order">주문하기</a>
							<a href="/product/list" class="btn btn_list">상품보기</a>
						</div>
					</div>
				</div>
			</div>
			<c:import url="../template/common_js.jsp"></c:import>
			<script src="/resources/js/productCart.js"></script>
		</body>

		</html>
												