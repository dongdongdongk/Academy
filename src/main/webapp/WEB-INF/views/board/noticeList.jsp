<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
			<link rel="stylesheet" href="/resources/css/menu/eventIcon.css">
			<link rel="stylesheet" href="/resources/css/style.css">
			<link rel="stylesheet" href="/resources/css/buttonHover.css">
			<c:import url="../template/common_css.jsp"></c:import>
			<c:import url="../template/tempcss.jsp"></c:import>


		</head>

		<body class="courses-page">
			<div class="page-header">
				<div class="page-header-overlay">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<header class="entry-header wow fadeInDown" data-wow-delay="0.1s"
									style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInDown;">
									<h1>공지사항</h1>
								</header><!-- .entry-header -->
							</div><!-- .col -->
						</div><!-- .row -->
					</div><!-- .container -->
				</div><!-- .page-header-overlay -->
			</div><!-- .page-header -->
			<c:import url="../template/header.jsp"></c:import>
			<header style="margin-top: 50px;">
				<div class="container-fluid">
					<div class="row col-md-7 mx-auto ">
						<!-- 검색창 -->



						<div class="row col-md-12 d-flex justify-content-end">
							<form class="row g-3 " action="./list" method="get" id="searchForm">
								
								<div class="col-auto ml-auto">
									<div class="input-group mb-4">
										<input type="hidden" name="page" value="1" id="page">
										<div class="col-auto">
											<label for="kind" class="visually-hidden">Kind</label>
											<select class="form-select wow fadeInUp" data-wow-delay="0.1s" name="kind" id="kind"
												aria-label="Default select example">
												<option value="title" ${pager.kind eq 'title' ? 'selected' :''}>Title</option>
												<option value="contents" ${pager.kind eq 'contents' ?'selected':''}>Contents
												</option>
												<option value="writer" ${pager.kind eq 'writer' ? 'selected' :''}>Writer
												</option>
											</select>
										</div>
										<input type="text" class="form-control mb-4 wow fadeInUp" data-wow-delay="0.1s"
											style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;"
											value="${pager.search}" name="search" id="search" placeholder="검색어를 입력하세요">
										<button type="submit" style="background: none; border: none; cursor: pointer;"
											class="align-items-start">
											<img src="/resources/images/search.png" alt="search" width="30" height="30"
												class="mb-3 wow fadeInUp" data-wow-delay="0.1s"
												style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
										</button>
									</div>
								</div>
							</form>
						</div>





						<table class="table table-fixed wow fadeIn tableSize" data-wow-delay="0.1s">
							<thead class="table-light">
								<tr>
									<th>No</th>
									<th>제목</th>
									<th>작성자</th>
									<th>등록일</th>
									<th>조회수</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${list}" var="dto">
									<tr class="check-item" data-num-check="${dto.checked}">
										<!-- <td><input hidden type="checkbox" class="check-item" data-num-check="${dto.checked}"></td> -->
										<td class="noticeNum" data-num-id="${dto.num}">${dto.num}</td>
										<td class="d-flex align-items-center">

											<a class="title" href="./detail?num=${dto.num}">${dto.title}</a>

											<c:forEach items="${dto.noticeFileDTOs}" var="fileDTO">
												<c:if test="${fileDTO.oriName ne null}"><img class="iconSize"
														src="/resources/images/file1.png"></c:if>
											</c:forEach>
										</td>

										<td>${dto.writer}</td>
										<td>${dto.regDate}</td>
										<td>${dto.hit}</td>
									</tr>
								</c:forEach>
							</tbody>

						</table>
						<div class="col-12 float-right">
							<button type="button" class="image-button  float-right color-5 wow fadeIn "
								data-wow-delay="0.1s" onclick="location.href='./add'">
								<img src="/resources/images/pen2.png" alt="Button icon">
								<span>글쓰기</span>
							</button>

							<!-- <button type="submit" class="btn btn-primary mb-3 greentop">검색</button>					 -->
						</div>
						<div class="row d-flex justify-content-between">
							<nav aria-label="Page navigation example">
								<ul class="pagination  d-flex justify-content-center wow fadeIn" data-wow-delay="0.1s"">
					  
					  <li class=" page-item ${pager.before ? 'disabled' : '' }">
									<a class="page-link" href="#" aria-label="Previous" data-board-page="1">
										<span aria-hidden="true">&laquo;</span>
									</a>
									</li>

									<li class="page-item ${pager.before ? 'disabled' : ''}">
										<a class="page-link" href="#" aria-label="Previous"
											data-board-page="${pager.startNum-1}">
											<span aria-hidden="true">&lsaquo;</span>
										</a>
									</li>

									<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
										<li class="page-item"><a class="page-link" href="#"
												data-board-page="${i}">${i}</a></li>
									</c:forEach>

									<li class="page-item ${pager.after eq false ? 'disabled' : ''}">
										<a class="page-link" href="#" aria-label="Next"
											data-board-page="${pager.lastNum+1}">
											<span aria-hidden="true">&rsaquo;</span>
										</a>
									</li>

									<li class="page-item ${pager.after eq false ? 'disabled' : ''}">
										<a class="page-link" href="#" aria-label="Next"
											data-board-page="${pager.totalPage}">
											<span aria-hidden="true">&raquo;</span>
										</a>
									</li>
								</ul>
							</nav>
						</div>

						<!-- <button class="image-button">
				<img src="/resources/images/pen2.png" alt="Button icon">
				<span>글쓰기</span>
			  </button>
			 -->

					</div>
			</header>


			<c:import url="../template/topBtn.jsp"></c:import>
			<c:import url="../template/tempjs.jsp"></c:import>
			<c:import url="../template/bottom.jsp"></c:import>
			<c:import url="../template/common_js.jsp"></c:import>
			<c:import url="../template/kakao.jsp"></c:import>
			<script src="../resources/js/temp/move.js"></script>
			<script src="/resources/js/listTop.js"></script>
			<script src="/resources/js/pageing.js"></script>

		</body>

		</html>