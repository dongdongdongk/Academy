<%@page import="com.ac.home.product.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.goods_table_wrap {
	padding: 20px 35px
}

.goods_table {
	width: 100%;
	border: 1px solid #d3d8e1;
	text-align: center;
	border-collapse: collapse;
}

.goods_table td {
	padding: 10px 5px;
	border: 1px solid #e9ebf0;
}

.goods_table thead {
	background-color: #f8f9fd;
	font-weight: 600;
}

.goods_table a {
	color: #1088ed;
	font-weight: 500;
}

.th_column_1 {
	width: 120px;
}

.th_column_3 {
	width: 110px;
}

.th_column_4 {
	width: 140px;
}

.th_column_5 {
	width: 140px;
}

.th_column_6 {
	
}
</style>
<title></title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

	<div class="container- fluid my-5">

		<div class="row mb-4 ">
			<h1
				class="col-md-7 mx-auto text-center border-bottom border-dark pb-3">상품
				LIST</h1>
		</div>

		<div class="goods_table_wrap">
			<!-- 상품 리스트 O -->
			<c:if test="${listcheck != 'empty'}">
				<table class="goods_table">
					<thead>
						<tr>
							<!-- 	<div class="row col-md-7 mx-auto">
									<table class="table table-hover">
										<thead>
											<tr>
											<tr> -->
							<td class="th_column_1">상품 번호</td>
							<td class="th_column_1">상품 이미지</td>
							<td class="th_column_2">상품 이름</td>
							<td class="th_column_3">가격</td>
							<td class="th_column_4">등록날짜</td>
							<td class="th_column_5">재고</td>
							<td class="th_column_6">카테고리</td>
						</tr>
					</thead>

					<%-- 		<c:forEach items="${dto.productImgDTOs}" var="fileDTO">
					<td class="tbl_td">${fileDTO.save}</td>
				</c:forEach> --%>
					<tbody class="table-group-divider">

						<c:forEach items="${list}" var="dto">


							<tr>
								<td>${dto.num}</td>

								<td class="tbl_td">
									<div class="row">
										<c:forEach items="${dto.productImgDTOs}" var="fileDTO">
											<div class="col-md-4 mb-4">
												<img src="../resources/upload/product/${fileDTO.save}" class="img-fluid">
											</div>
										</c:forEach>
									</div>
								</td>
								<td class="tbl_td"><a href="./productDetail?num=${dto.num}">${dto.title}</a></td>
								<td class="tbl_td">${dto.price}</td>
								<td class="tbl_td">${dto.regDate}</td>
								<%-- 		<c:choose>
						<c:when test="${dto.grade eq 1}">판매중</c:when>
						<c:otherwise>판매중</c:otherwise>
					</c:choose>
						<c:if test="${dto.grade eq 1}">판매중</c:if>
						<c:if test="${dto.grade eq 0}">판매중단</c:if>
				 --%>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>
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
						<option value="title" ${pager.kind eq 'title'? 'selected':''}>Title</option>
						<%-- <option value="contents" ${pager.kind eq 'info'? 'selected':''}>info</option> --%>
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

			<c:if test="${not empty member}">

				<c:if test="${member.roleDTO.roleName eq 'ADMIN'}">
					<div class="row col-md-7 mx-auto">
						<a href="./productAdd" class="btn btn-primary col-5">상품등록</a>
					</div>
				</c:if>
			</c:if>

		</div>

	</div>
	




<c:import url="../template/common_js.jsp"></c:import>
<script src="/resources/css/goodsManage.css"></script>
<script src="../resources/js/pageing.js"></script>
<script src="../resources/js/fileManger.js"></script>
	<script>
	setMax(1);
	$("#bookDetail").summernote();
	// setParam('f');
</script>
</body>
</html>