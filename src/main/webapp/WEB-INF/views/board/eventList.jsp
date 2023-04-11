<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html>
<head>
<title>이벤트</title>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
<link rel="stylesheet" href="/resources/css/event.css">

<c:import url="../template/tempcss.jsp"></c:import>
<c:import url="../template/common_css.jsp"></c:import>           
</head>

<c:import url="../template/header.jsp"></c:import>

<body class="courses-page">
        <div class="page-header">
            <div class="page-header-overlay">
                <div class="container">
                    <div class="row">
                         <div class="col-12">
                            <header class="entry-header">
                                <h1>이벤트</h1>
                            </header><!-- .entry-header -->
                        </div><!-- .col -->
                    </div><!-- .row -->
                </div><!-- .container -->
            </div><!-- .page-header-overlay -->
        </div><!-- .page-header -->

        <div class="category_event">
            <div class="category_cont">
                <ul class="category_ul nav justify-content-center grey lighten-4 py-4 wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                    <li class="nav-item">
                        <a class="nav-link active" id="allEvent">전체</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="continueEvent">진행중</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="endEvent">종료</a>
                    </li>
                </ul>
            </div>
        </div>

            <div class="container">
                 <!-- 현재날짜 -->
                <div class="date_contents visually-hidden">
                    <c:set var="now" value="<%=new java.util.Date()%>" />
                    <c:set var="today"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set> 
                    <c:out value="${today}"/>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumbs wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                            <ul class="flex flex-wrap align-items-center p-0 m-0">
                                <li><a href="/"><i class="fa fa-home"></i> 홈</a></li>
                                <li>이벤트</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="row search_contents">
                    <form class="row" action="./list" method="get" id="searchForm">
                        <input type="hidden" name="page" value="1" id="page">
                      <div class="search_kind col-auto">
                        <label for="kind" class="visually-hidden">Kind</label>
                        <select class="form-select" name="kind" id="kind" aria-label="Default select example">
                          <option value="title" ${pager.kind eq 'title'? 'selected':''}>제목</option>
                          <option value="contents" ${pager.kind eq 'contents' ?'selected':''}>내용</option>
                        </select>
                      </div>
                      <div class="search_input col-auto">
                        <label for="search" class="visually-hidden">Search</label>
                        <input type="text" class="form-control" value="${pager.search}" name="search" id="search" placeholder="검색어를 입력하세요">
                      </div>
                      <div class="search_btn col-auto">
                        <button type="submit" class="btn btn-outline-success">검색</button>
                      </div>
                    </form>
                </div>

                <div class="row">
                    <div class="col-7col-lg-8">
                       <div id="eventResult">
                            <div class="featured-courses courses-wrap">
                                <div class="row mx-m-25">
                                
                                    <c:forEach items="${list}" var="dto">
                                        <div class="col-3 col-md-3 px-25 wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                                            <div class="course-content">
                                                <figure class="course-thumbnail">
                                                    <c:set var="loop_flag" value="false" />
                                                    
                                                    <c:forEach items="${dto.eventFileDTOs}" var="fileDTO">
                                                        <c:if test="${today > dto.endDate}">
                                                            <c:if test="${not loop_flag }">
                                                                <c:if test="${not empty dto.eventFileDTOs}">
                                                                    <a href="./detail?num=${dto.num}"><img class="radius grayscale thumbnail" src="../resources/upload/event/${fileDTO.fileName}"></a>
                                                                    <c:set var="loop_flag" value="true" />
                                                                </c:if>
                                                            </c:if>
                                                        </c:if>     

                                                        <c:if test="${not loop_flag }">
                                                            <c:if test="${not empty dto.eventFileDTOs}">
                                                                <a href="./detail?num=${dto.num}"> <img class="radius thumbnail" src="../resources/upload/event/${fileDTO.fileName}"></a>
                                                                <c:set var="loop_flag" value="true" />
                                                            </c:if>
                                                        </c:if>        
                                                    </c:forEach>
                                                </figure>
                            
                                                <div class="course-content-wrap">
                                                    <header class="entry-header">
                                                        <h2 class="entry-title ellipsis">
                                                            <c:set var="loop_flag" value="false" />
                                                                <c:forEach items="${dto.eventFileDTOs}" var="fileDTO">
                                                                    <c:if test="${not loop_flag }">
                                                                        <c:if test="${fileDTO.oriName ne null}">
                                                                            <img class="material-symbols-outlined"src="/resources/images/file_icon.gif">
                                                                            <c:set var="loop_flag" value="true" />
                                                                        </c:if>
                                                                    </c:if>
                                                                </c:forEach>
                                                            <a href="./detail?num=${dto.num}">${dto.title}</a>               
                                                        </h2>
                                                        <div class="entry-meta flex flex-wrap align-items-center">
                                                            <div class="course-author"><a href="#">${dto.writer} </a>
                                                            </div>
                                                            <div id="startDate" data-start-event="${dto.startDate}" class="course-date">시작일${dto.startDate}</div>
                                                            <div id="endDate" data-end-event="${dto.endDate}" class="course-date">종료일${dto.endDate}</div>
                                                            <div class="course-date">조회수${dto.hit}</div>
                                                        </div>
                                                    </header>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>           
                                <c:if test="${not empty member}">
                                	<c:if test="${member.roleDTO.roleName eq 'ADMIN'}">
	                                    <div class="event_add">
	                                        <a class="btn" href="./add">이벤트등록</a>   
	                                    </div>
                                    </c:if>
                                </c:if>
                            </div>
                        </div>
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
            
            
        <c:import url="../template/common_js.jsp"></c:import>
        <c:import url="../template/kakao.jsp"></c:import>
        <c:import url="../template/tempjs.jsp"></c:import>
        <c:import url="../template/bottom.jsp"></c:import>
        <script src="../resources/js/temp/move.js"></script>
        <script src="../resources/js/pageing.js"></script>
        <script type='text/javascript' src='/resources/js/jquery.js'></script>
        <script type='text/javascript' src='/resources/js/swiper.min.js'></script>
        <script type='text/javascript' src='/resources/js/masonry.pkgd.min.js'></script>
        <script type='text/javascript' src='/resources/js/jquery.collapsible.min.js'></script>
        <script type='text/javascript' src='/resources/js/custom.js'></script>
        <script type='text/javascript' src='/resources/js/eventDate.js'></script>      
</body>
</html>