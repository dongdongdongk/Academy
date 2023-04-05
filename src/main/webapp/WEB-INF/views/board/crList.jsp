<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강후기 목록</title>
<c:import url="../template/common_css.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/crList.css">
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<header style="margin-top: 200px;">
		<div class="container-fluid">
			<div id="sub_banner" class="bgColor">
				<h2 class="page_title">
					수강후기
				</h2>
			</div>
	
			<div class="page-wrapper" style="position:relative;">
				<div class="post-slider">
				  <h1 class="silder-title">수강후기</h1>
				  <!-- <i class="fas fa-chevron-left prev material-symbols-outlined"></i>
				  <i class="fas fa-chevron-right next material-symbols-outlined"></i> -->
				  <div class="post-wrapper">
					
					<div class="post">
					  <img src="/resources/images/winter.jpg" class="slider-image">
					  <div class="post-info">
						<h4><a href="#" class="post-subject">제목</a></h4>
						<h4>작성자</h4>
					  </div>
					</div>
	
					<div class="post">
					  <img src="/resources/images/winter2.jpg" class="slider-image">
					  <div class="post-info">
						<h4><a href="#">제목</a></h4>
						<h4>작성자</h4>
					  </div>
					</div>
	
					<div class="post">
					  <img src="/resources/images/winter.jpg" class="slider-image">
					  <div class="post-info">
						<h4><a href="#">제목</a></h4>
						<h4>작성자</h4>
					  </div> 
					</div>
	
					<div class="post">
					  <img src="/resources/images/winter2.jpg" class="slider-image">
					  <div class="post-info">
						<h4><a href="#">제목</a></h4>
						<h4>작성자</h4>
					  </div>
					</div>
	
				  </div>
				</div>
			  </div>
	
	
			<div class="row col-md-7 mx-auto">
				<table class="table">
				  	<thead class="table-dark">
				 		<tr>
							<th>번호</th><th>제목</th><th>작성자</th><th>등록일</th>
						</tr>
				 	</thead>
				 	
				  	<tbody>
				  		<c:forEach items="${list}" var="dto">
							<tr>
								<td>${dto.num}</td>
								<td>${dto.title}</td>
								<td>${dto.writer}</td>
								<td>${dto.regDate}</td>
							</tr>
						</c:forEach>
				  	</tbody>
				</table>
				<div class="row">
					<nav aria-label="Page navigation example">
					  <ul class="pagination">
					  
					  <li class="page-item ${pager.before ? 'disabled' : ''}">
						  <a class="page-link" href="#" aria-label="Previous" data-board-page="1">
							<span aria-hidden="true">&laquo;</span>
						  </a>
						</li>
					 
						<li class="page-item ${pager.before ? 'disabled' : ''}">
						  <a class="page-link" href="#" aria-label="Previous" data-board-page="${pager.startNum-1}">
							<span aria-hidden="true">&lsaquo;</span>
						  </a>
						</li>
						
						<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
							<li class="page-item"><a class="page-link" href="#" data-board-page="${i}">${i}</a></li>
						</c:forEach>
						
						<li class="page-item ${pager.after eq false ? 'disabled' : ''}">
						  <a class="page-link" href="#" aria-label="Next" data-board-page="${pager.lastNum+1}">
							<span aria-hidden="true">&rsaquo;</span>
						  </a>
						</li>
						
						<li class="page-item ${pager.after eq false ? 'disabled' : ''}">
						  <a class="page-link" href="#" aria-label="Next" data-board-page="${pager.totalPage}">
							<span aria-hidden="true">&raquo;</span>
						  </a>
						</li>
					  </ul>
					</nav>
				</div>
	
			<div class="row col-md-2 mx-auto mt-5">
				<a class="btn btn-primary" href="./crAdd">수강후기 등록</a>
			</div>	
			
			<div id="cr2">
				<h3>전체 수강 후기</h3>
			</div>
			
			<c:forEach items="${list}" var="dto">
				<div class="cr-information">
					<hr>
					<div>
						${dto.writer}
					</div> <br>
					<div>
						${dto.regDate}
					</div> <br>
					<div>
						${dto.title}
					</div> <br>
					<details>
						<summary>내용보기</summary>
						<p>${dto.contents}</p>
					</details>
				</div>
			</c:forEach>
		</div>

</header>	

	<c:import url="../template/common_js.jsp"></c:import>
	<c:import url="../template/bottom.jsp"></c:import>
	<script src="../resources/js/pageing.js"></script>
	<script src="/resources/js/crList.js"></script>
</body>
</html>