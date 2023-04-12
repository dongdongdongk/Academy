<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Qna 목록</title>
<c:import url="../template/common_css.jsp"></c:import>
<c:import url="../template/tempcss.jsp"></c:import>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">

<!-- FontAwesome CSS -->
<link rel="stylesheet" href="/resources/css/font-awesome.min.css">

<!-- ElegantFonts CSS -->
<link rel="stylesheet" href="/resources/css/elegant-fonts.css">

<!-- themify-icons CSS -->
<link rel="stylesheet" href="/resources/css/themify-icons.css">

<!-- Swiper CSS -->
<link rel="stylesheet" href="/resources/css/swiper.min.css">

<!-- Styles -->
    <link rel="stylesheet" href="/resources/css/style.css">
	
	<link rel="stylesheet" href="/resources/css/list.css">
</head>
<body class="courses-page">
	<div class="page-header">
              <div class="page-header-overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
								<header class="entry-header wow fadeInDown" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInDown;">
                                    <h1>질문응답</h1>
                                </header><!-- .entry-header -->
                            </div><!-- .col -->
                        </div><!-- .row -->
                    </div><!-- .container -->
                </div><!-- .page-header-overlay -->
            </div><!-- .page-header -->
	
			<c:import url="../template/header.jsp"></c:import>
			<header style="margin-top: 50px;">
	<hr>
	
	<div class="container-fluid">
		<!-- <div class="row mb-4 ">
			<h1 class="col-md-7 mx-auto text-center border-bottom border-dark pb-3">QNA LIST</h1>
		</div> -->
		
		<div class="row col-md-7 mx-auto">
			<div class="row searchs">
				<form class="row g-3 mr-auto" action="./qnaList" method="get" id="searchForm">
					<input type="hidden" name="page" value="1" id="page">
				  <div class="col-auto">
					<label for="kind" class="visually-hidden">Kind</label>
					<select class="form-select" name="kind" id="kind" aria-label="Default select example">
					  <option value="title" ${pager.kind eq 'title'? 'selected':''}>Title</option>
					  <option value="contents" ${pager.kind eq 'contents' ?'selected':''}>Contents</option>
					  <option value="writer" ${pager.kind eq 'writer'? 'selected':''}>Writer</option>
					</select>
				  </div>
				  <div class="col-auto">
					<label for="search" class="visually-hidden">Search</label>
					<input type="text" class="form-control" value="${pager.search}" name="search" id="search" placeholder="검색어를 입력하세요">
				  </div>
				  <div class="col-auto">
					<button type="submit" class="btn btn-primary mb-3">검색</button>
				  </div>
				</form>
			</div>
			<table class="table table-fixed wow fadeIn tableSize" data-wow-delay="0.1s">
			  	<thead class="table-light">
			 		<tr>
						<th>NUM</th><th>TITLE</th><th>WRITER</th><th>HIT</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${list}" var="dto">
						<tr>
							<td>${dto.num}</td>
							<td>
								<a href="./qnaDetail?num=${dto.num}">${dto.title}</a>
							</td>
							<td>${dto.writer}</td>
							<td>${dto.hit}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="col-12 float-right">
				<button type="button" class="image-button  float-right color-5 wow fadeIn " data-wow-delay="0.1s" onclick="location.href='./qnaAdd'">
					<img src="/resources/images/pen2.png" alt="Button icon">
					<span>글쓰기</span>
				</button>	
				
				<div class="row">
					<nav aria-label="Page navigation example">
					  <ul class="pagination d-flex justify-content-center">
					  
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
				
				
			</div>	
			
				
		</div>
	</div>
	</header>
	<c:import url="../template/topBtn.jsp"></c:import>
	<c:import url="../template/tempjs.jsp"></c:import>
	<c:import url="../template/common_js.jsp"></c:import>
	<c:import url="../template/bottom.jsp"></c:import>
	<c:import url="../template/kakao.jsp"></c:import>
	<script src="../resources/js/pageing.js"></script>
</body>
</html>