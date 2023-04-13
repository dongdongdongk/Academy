<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강후기 목록</title>
<c:import url="../template/common_css.jsp"></c:import>
<c:import url="../template/tempcss.jsp"></c:import>
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
	
			<div class="page-wrapper" style="position:relative;">
				<div class="post-slider">
					<div class="post-wrapper">
					  	<div class="post">
							<div class="post-contents">
								<div class="star">
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-1" alt="별점아이콘" decoding="async"/></div>
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-2" alt="별점아이콘" decoding="async"/></div>
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-3" alt="별점아이콘" decoding="async"/></div>
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-4" alt="별점아이콘" decoding="async"/></div>
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-5" alt="별점아이콘" decoding="async"/></div>
								</div>
								<span>장*서</span>
								<h4>
									강의 수강덕에 늦은 나이인데도 합격했습니다.
								</h4>
								<div class="pointColor">
									<img src="/resources/images/videoBtn.svg" class="svg Bg_svg" alt="과정아이콘" decoding="async" />
									<h5>정보처리기사 실기</h5>
								</div>
								<p>기존 워너에듀IT 홈페이지 박**(p*****@da..) 회원님의 후기입니다.비전공...</p>
							</div>
					 	</div>
						
						 <div class="post">
							<div class="post-contents">
								<div class="star">
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-1" alt="별점아이콘" decoding="async"/></div>
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-2" alt="별점아이콘" decoding="async"/></div>
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-3" alt="별점아이콘" decoding="async"/></div>
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-4" alt="별점아이콘" decoding="async"/></div>
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-5" alt="별점아이콘" decoding="async"/></div>
								</div>
								<span>김*현</span>
								<h4>
									필기 합격 이후 실기 후기로 다시 찾아 뵙게 되었습니다!!
								</h4>
								<div class="pointColor">
									<img src="/resources/images/videoBtn.svg" class="svg Bg_svg" alt="과정아이콘" decoding="async" />
									<h5>정보처리기사 실기</h5>
								</div>
								<p>기존 워너에듀IT 홈페이지 박**(p*****@da..) 회원님의 후기입니다.비전공...</p>
							</div>
					 	</div>

						 <div class="post">
							<div class="post-contents">
								<div class="star">
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-1" alt="별점아이콘" decoding="async"/></div>
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-2" alt="별점아이콘" decoding="async"/></div>
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-3" alt="별점아이콘" decoding="async"/></div>
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-4" alt="별점아이콘" decoding="async"/></div>
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-5" alt="별점아이콘" decoding="async"/></div>
								</div>
								<span>정*구</span>
								<h4>
									필기 합격을 이루고.. 실기 합격의 길로 가는 길
								</h4>
								<div class="pointColor">
									<img src="/resources/images/videoBtn.svg" class="svg Bg_svg" alt="과정아이콘" decoding="async" />
									<h5>정보처리기사 실기</h5>
								</div>
								<p>기존 워너에듀IT 홈페이지 박**(p*****@da..) 회원님의 후기입니다.비전공...</p>
							</div>
					 	</div>

						 <div class="post">
							<div class="post-contents">
								<div class="star">
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-1" alt="별점아이콘" decoding="async"/></div>
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-2" alt="별점아이콘" decoding="async"/></div>
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-3" alt="별점아이콘" decoding="async"/></div>
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-4" alt="별점아이콘" decoding="async"/></div>
									<div><img src="/resources/images/star.svg" class="svg" id="star-168053-5" alt="별점아이콘" decoding="async"/></div>
								</div>
								<span>이*원</span>
								<h4>
									정보처리기사 필기 합격후기 ( 7일의 노력 )
								</h4>
								<div class="pointColor">
									<img src="/resources/images/videoBtn.svg" class="svg Bg_svg" alt="과정아이콘" decoding="async" />
									<h5>정보처리기사 실기</h5>
								</div>
								<p>기존 워너에듀IT 홈페이지 박**(p*****@da..) 회원님의 후기입니다.비전공...</p>
							</div>
					 	</div>
					</div>
				  </div>
			  </div>
	
		<div class="review_list">
			<div id="cr2">
				<h3>전체 수강 후기</h3>
			</div>
			
			<c:forEach items="${list}" var="dto">
				<div class="cr-information">
					<div class="star">
						<div><img src="/resources/images/star.svg" class="svg" id="star-168053-1" alt="별점아이콘" decoding="async"/></div>
						<div><img src="/resources/images/star.svg" class="svg" id="star-168053-2" alt="별점아이콘" decoding="async"/></div>
						<div><img src="/resources/images/star.svg" class="svg" id="star-168053-3" alt="별점아이콘" decoding="async"/></div>
						<div><img src="/resources/images/star.svg" class="svg" id="star-168053-4" alt="별점아이콘" decoding="async"/></div>
						<div><img src="/resources/images/star.svg" class="svg" id="star-168053-5" alt="별점아이콘" decoding="async"/></div>
					</div>
					<div class="writer">
						${dto.writer}
					</div>
					<div>
						${dto.regDate}
					</div> 
					<div class="pointColor">
						<img src="/resources/images/videoBtn.svg" class="svg Bg_svg" alt="과정아이콘" decoding="async" />
						<h5>정보처리기사 실기</h5>
					</div>
					<div class="title">
						${dto.title}
					</div>
					<div>
						<details class="cr-information details">
							<summary>내용보기</summary>
							<p>${dto.contents}</p>
						</details>
					</div>
				</div>
			</c:forEach>
			<c:if test="${not empty member}">
				<div class="review_add">
					<a class="btn" href="./crAdd">수강후기 등록</a>
				</div>
			</c:if>
		</div>
</header>	

<c:import url="../template/topBtn.jsp"></c:import>
<c:import url="../template/common_js.jsp"></c:import>
<c:import url="../template/bottom.jsp"></c:import>
<c:import url="../template/kakao.jsp"></c:import>
<c:import url="../template/tempjs.jsp"></c:import>
<script src="../resources/js/pageing.js"></script>
<script src="/resources/js/crList.js"></script>
<script src="/resources/js/slideToggle.js"></script>
</body>
</html>