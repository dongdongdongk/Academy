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
<body class="courses-page">
            <div class="page-header">
              <div class="page-header-overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <header class="entry-header">
                                    <h1>수강후기</h1>
                                </header><!-- .entry-header -->
                            </div><!-- .col -->
                        </div><!-- .row -->
                    </div><!-- .container -->
                </div><!-- .page-header-overlay -->
            </div><!-- .page-header -->
<c:import url="../template/header.jsp"></c:import>
	<header style="margin-top: 50px;">
		<div class="container-fluid">
			<!-- <div id="sub_banner" class="bgColor">
				<h2 class="page_title">
					수강후기
				</h2>
			</div> -->
	
			<div class="page-wrapper" style="position:relative;">
				<!-- <div class="w1230">
					<h3 class="title">수강후기</h3>
			
					<ul class="review_list rolling">
						<li>
							<a onclick="showReview('168053')">
								<dl class="star">
									<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-1" alt="별점아이콘" decoding="async"/></dd>
									<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-2" alt="별점아이콘" decoding="async"/></dd>
									<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-3" alt="별점아이콘" decoding="async"/></dd>
									<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-4" alt="별점아이콘" decoding="async"/></dd>
									<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-5" alt="별점아이콘" decoding="async"/></dd>
								</dl>
								<span>워**듀</span>
								<h4>
									강의 수강덕에 늦은 나이인데도 합격했습니다.
								</h4>
								<h5 class="pointColor">
									<img src="/theme/6/img/main/videoBtn.svg" class="svg Bg_svg" alt="과정아이콘" decoding="async" />
									정보처리기사 실기
								</h5>
								<p>기존 워너에듀IT 홈페이지 박**(p*****@da..) 회원님의 후기입니다.비전공...</p>
							</a>
						</li>
						
						<li>
							<a onclick="showReview('168052')">
								<dl class="star">
									<dd><img src="/theme/6/img/main/star.svg" class="svg" id="star-168052-1" alt="별점아이콘" decoding="async"/></dd>
									<dd><img src="/theme/6/img/main/star.svg" class="svg" id="star-168052-2" alt="별점아이콘" decoding="async"/></dd>
									<dd><img src="/theme/6/img/main/star.svg" class="svg" id="star-168052-3" alt="별점아이콘" decoding="async"/></dd>
									<dd><img src="/theme/6/img/main/star.svg" class="svg" id="star-168052-4" alt="별점아이콘" decoding="async"/></dd>
									<dd><img src="/theme/6/img/main/star.svg" class="svg" id="star-168052-5" alt="별점아이콘" decoding="async"/></dd>
								</dl>
								<span>워**듀</span>
								<h4>
									필기 합격 이후 실기 후기로 다시 찾아 뵙게 되었습니다!!
								</h4>
								<h5 class="pointColor">
									<img src="/theme/6/img/main/videoBtn.svg" class="svg Bg_svg" alt="과정아이콘" decoding="async" />
									정보처리기사 실기
								</h5>
								<p>기존 워너에듀IT 홈페이지 전**(ich******..) 회원님의 후기입니다.필기 합...</p>
							</a>
						</li>
						
						<li>
							<a onclick="showReview('168051')">
								<dl class="star">
									<dd><img src="/theme/6/img/main/star.svg" class="svg" id="star-168051-1" alt="별점아이콘" decoding="async"/></dd>
									<dd><img src="/theme/6/img/main/star.svg" class="svg" id="star-168051-2" alt="별점아이콘" decoding="async"/></dd>
									<dd><img src="/theme/6/img/main/star.svg" class="svg" id="star-168051-3" alt="별점아이콘" decoding="async"/></dd>
									<dd><img src="/theme/6/img/main/star.svg" class="svg" id="star-168051-4" alt="별점아이콘" decoding="async"/></dd>
									<dd><img src="/theme/6/img/main/star.svg" class="svg" id="star-168051-5" alt="별점아이콘" decoding="async"/></dd>
								</dl>
								<span>워**듀</span>
								<h4>
									정보처리기사 필기 합격후기 ( 7일의 노력 )
								</h4>
								<h5 class="pointColor">
									<img src="/theme/6/img/main/videoBtn.svg" class="svg Bg_svg" alt="과정아이콘" decoding="async" />
									정보처리기사 필기
								</h5>
								<p>기존 워너에듀IT 홈페이지 신**(s******@n..)회원님의 후기입니다.2021 정...</p>
							</a>
						</li>
						
						<li>
							<a onclick="showReview('168050')">
								<dl class="star">
									<dd><img src="/theme/6/img/main/star.svg" class="svg" id="star-168050-1" alt="별점아이콘" decoding="async"/></dd>
									<dd><img src="/theme/6/img/main/star.svg" class="svg" id="star-168050-2" alt="별점아이콘" decoding="async"/></dd>
									<dd><img src="/theme/6/img/main/star.svg" class="svg" id="star-168050-3" alt="별점아이콘" decoding="async"/></dd>
									<dd><img src="/theme/6/img/main/star.svg" class="svg" id="star-168050-4" alt="별점아이콘" decoding="async"/></dd>
									<dd><img src="/theme/6/img/main/star.svg" class="svg" id="star-168050-5" alt="별점아이콘" decoding="async"/></dd>
								</dl>
								<span>워**듀</span>
								<h4>
									필기 합격을 이루고.. 실기 합격의 길로 가는 길
								</h4>
								<h5 class="pointColor">
									<img src="/theme/6/img/main/videoBtn.svg" class="svg Bg_svg" alt="과정아이콘" decoding="async" />
									정보처리기사 실기
								</h5>
								<p>기존 워너에듀IT 홈페이지 박**(j********..) 회원님의 후기입니다. 4학년 ...</p>
							</a>
						</li>
						
					</ul>
				</div> -->

				<div class="post-slider">
					<div class="post-wrapper">
					  <div class="post">
						<a onclick="showReview('168053')">
							<dl class="star">
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-1" alt="별점아이콘" decoding="async"/></dd>
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-2" alt="별점아이콘" decoding="async"/></dd>
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-3" alt="별점아이콘" decoding="async"/></dd>
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-4" alt="별점아이콘" decoding="async"/></dd>
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-5" alt="별점아이콘" decoding="async"/></dd>
							</dl>
							<span>장현서</span>
							<h4>
								강의 수강덕에 늦은 나이인데도 합격했습니다.
							</h4>
							<h5 class="pointColor">
								<img src="/resources/images/videoBtn.svg" class="svg Bg_svg" alt="과정아이콘" decoding="async" />
								정보처리기사 실기
							</h5>
							<p>기존 워너에듀IT 홈페이지 박**(p*****@da..) 회원님의 후기입니다.비전공...</p>
						</a>
					  </div>
	  
					  <div class="post">
						<a onclick="showReview('168053')">
							<dl class="star">
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-1" alt="별점아이콘" decoding="async"/></dd>
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-2" alt="별점아이콘" decoding="async"/></dd>
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-3" alt="별점아이콘" decoding="async"/></dd>
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-4" alt="별점아이콘" decoding="async"/></dd>
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-5" alt="별점아이콘" decoding="async"/></dd>
							</dl>
							<span>장현서</span>
							<h4>
								강의 수강덕에 늦은 나이인데도 합격했습니다.
							</h4>
							<h5 class="pointColor">
								<img src="/resources/images/videoBtn.svg" class="svg Bg_svg" alt="과정아이콘" decoding="async" />
								정보처리기사 실기
							</h5>
							<p>기존 워너에듀IT 홈페이지 박**(p*****@da..) 회원님의 후기입니다.비전공...</p>
						</a>
					  </div>
	  
					  <div class="post">
						<a onclick="showReview('168053')">
							<dl class="star">
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-1" alt="별점아이콘" decoding="async"/></dd>
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-2" alt="별점아이콘" decoding="async"/></dd>
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-3" alt="별점아이콘" decoding="async"/></dd>
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-4" alt="별점아이콘" decoding="async"/></dd>
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-5" alt="별점아이콘" decoding="async"/></dd>
							</dl>
							<span>장현서</span>
							<h4>
								강의 수강덕에 늦은 나이인데도 합격했습니다.
							</h4>
							<h5 class="pointColor">
								<img src="/resources/images/videoBtn.svg" class="svg Bg_svg" alt="과정아이콘" decoding="async" />
								정보처리기사 실기
							</h5>
							<p>기존 워너에듀IT 홈페이지 박**(p*****@da..) 회원님의 후기입니다.비전공...</p>
						</a>
					  </div>
	  
					  <div class="post">
						<a onclick="showReview('168053')">
							<dl class="star">
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-1" alt="별점아이콘" decoding="async"/></dd>
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-2" alt="별점아이콘" decoding="async"/></dd>
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-3" alt="별점아이콘" decoding="async"/></dd>
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-4" alt="별점아이콘" decoding="async"/></dd>
								<dd><img src="/resources/images/star.svg" class="svg" id="star-168053-5" alt="별점아이콘" decoding="async"/></dd>
							</dl>
							<span>장현서</span>
							<h4>
								강의 수강덕에 늦은 나이인데도 합격했습니다.
							</h4>
							<h5 class="pointColor">
								<img src="/resources/images/videoBtn.svg" class="svg Bg_svg" alt="과정아이콘" decoding="async" />
								정보처리기사 실기
							</h5>
							<p>기존 워너에듀IT 홈페이지 박**(p*****@da..) 회원님의 후기입니다.비전공...</p>
						</a>
					  </div>
	  
					</div>
				  </div>



				<!-- <div class="post-slider">
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
				</div> -->
			  </div>
	
	
			<div class="row col-md-7 mx-auto">
				<!-- <table class="table">
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
				</div> -->
	
			<div class="row col-md-3 mx-auto mt-5">
				<a class="btn" href="./crAdd">수강후기 등록</a>
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
	<c:import url="../template/kakao.jsp"></c:import>
	<script src="../resources/js/pageing.js"></script>
	<script src="/resources/js/crList.js"></script>
</body>
</html>