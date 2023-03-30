<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

			<h1 style="text-align: center; margin: 50px 0;">상품 리스트</h1>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>상품 번호</th>
						<th>상품 이미지</th>
						<th>상품 이름</th>
						<th>가격</th>
						<th>등록날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="vo">
						<tr>
							<td>${vo.num}</td>
							<td>
							<c:forEach items="${vo.productImgDTOs}" var="fileDTO">
								<div>
									<img src="../resources/upload/product/${fileDTO.save}" class="img-fluid">
								</div>
							</c:forEach>
							</td>
							<td><a href="./productDetail?num=${vo.num}">${vo.title}</a></td>
							<td>${vo.price}</td>
							<td>${vo.regDate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>