<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang='en'>
<head>
<meta charset="UTF-8">
<title>Hello World</title>
<c:import url="../template/tempcss.jsp"></c:import>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
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
</head>
<body class="about-page">
    <div class="page-header">
        <header class="site-header">
            <header class="site-header">
                <div class="top-header-bar">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12 col-lg-6 d-none d-md-flex flex-wrap justify-content-center justify-content-lg-start mb-3 mb-lg-0">
                                <div class="header-bar-email d-flex align-items-center">
                                    <i class="fa fa-envelope"></i><a href=>tuanna@gmail.com</a>
                                </div><!-- .header-bar-email -->

                                <div class="header-bar-text lg-flex align-items-center">
                                    <p><i class="fa fa-phone"></i>010-8282-8998 </p>
                                </div><!-- .header-bar-text -->
                            </div><!-- .col -->

                            <div class="col-12 col-lg-6 d-flex flex-wrap justify-content-center justify-content-lg-end align-items-center">
                                <!-- <div class="header-bar-search">
                                    <form class="flex align-items-stretch">
                                        <input type="search" placeholder="What would you like to learn?">
                                        <button type="submit" value="" class="flex justify-content-center align-items-center"><i class="fa fa-search"></i></button>
                                    </form> 
                                </div>.header-bar-search -->

                                <div class="header-bar-menu">
                                    <ul class="flex justify-content-center align-items-center py-2 pt-md-0">
                                        <c:if test="${empty member}">
                                            <li><a href="/member/memberAgree">회원가입</a></li>
                                            <li><a href="/member/memberLogin">로그인</a></li>
                                        </c:if>
                                        <c:if test="${not empty member}">
                                            <span id="login_log" style="border-bottom: 1px solid white;">${member.id} 님, 환영합니다.</span>
                                            <c:if test="${member.roleDTO.roleName eq 'ADMIN'}">
                                                <li><a id="adminPage" href="/member/adminPage">관리자페이지</a></li>
                                            </c:if>
                                            <c:if test="${member.roleDTO.roleName eq 'MEMBER'}">
                                                <li><a href="/member/memberPage">마이페이지</a></li>
                                            </c:if>
                                            <li><a href="/member/memberLogout">로그아웃</a></li>
                                        </c:if>
                                    </ul>
                                </div><!-- .header-bar-menu -->
                            </div><!-- .col -->
                        </div><!-- .row -->
                    </div><!-- .container-fluid -->
                </div><!-- .top-header-bar -->

                <div class="nav-bar">
                    <div class="container">
                        <div class="row">
                            <div class="col-9 col-lg-3">
                                <div class="site-branding">
                                    <h1 class="site-title"><a href="/" rel="home">Acade<span>my</span></a></h1>
                                </div><!-- .site-branding -->
                            </div><!-- .col -->

                            <div class="col-3 col-lg-9 flex justify-content-end align-content-center">
                                <nav class="site-navigation flex justify-content-end align-items-center">
                                    <ul class="flex flex-column flex-lg-row justify-content-lg-end align-content-center">
                                        <li class="current-menu-item"><a href="/">Home</a></li>
                                        <li><a href=>About</a></li>
                                        <li><a href="/product/list">수강신청</a></li>
                
                                    </ul>
                                    
                                    <div class="dropdown">
                                        <button class="dropbtn">고객센터</button>
                                        <div class="dropdown-view">
                                            <ul class="dropdown-content">
                                                <li><a href="/cr/crList">수강후기</a></li>
                                                <li><a href="/notice/list">공지사항</a></li>
                                                <li><a href="/qna/qnaList">질문응답</a></li>
                                                <li><a href="/event/list">이벤트</a></li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="hamburger-menu d-lg-none">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                    </div><!-- .hamburger-menu -->

                                    <div class="header-bar-cart">
                                        <a href="" class="flex justify-content-center align-items-center"><span aria-hidden="true" class="icon_bag_alt"></span></a>
                                    </div><!-- .header-bar-search -->
                                </nav><!-- .site-navigation -->
                            </div><!-- .col -->
                        </div><!-- .row -->
                    </div><!-- .container -->
                </div><!-- .nav-bar -->
            </header><!-- .site-header -->
        </header><!-- .site-header -->

        <div class="page-header-overlay">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <header class="entry-header wow fadeInDown" data-wow-delay="0.1s"
                        style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInDown;">
                            <h1>ABOUT</h1>
                        </header><!-- .entry-header -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .page-header-overlay -->
    </div><!-- .page-header -->

    <div class="container">
        

        <div class="row">
            <div class="col-12">
                <div class="about-heading wow fadeInDown" data-wow-delay="0.1s"
                style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInDown;">
                    <h2 class="entry-title ">Welcome to Academy</h2>

                    <p>우리의 강사진을 믿고 따라오시면 합격의 문으로 단번에 들어 오실수 있습니다.</p>
                </div><!-- .about-heading -->
            </div><!-- .col -->

            <div class="col-12 col-lg-6">
                <div class="about-stories wow fadeInUp" data-wow-delay="0.1s"
                style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                    <h3>Our Stories</h3>

                    <p>
                        점점 난이도가 높아지고 합격률이 낮아지는 정보처리기사 장현서 강사님과 함께 시작하세요.



                        정보처리 기사 강의를 하고 있는 장현서 강사입니다.
                        
                        전공자, 비전공자 모두 정보처리기사를 취득할 수 있습니다.
                        
                        안녕하세요..장현서 강사입니다.
                        2003년 개발자로 입사를 하여 아직까지는 개발에서 손을 놓지 않고, 20년차를 맞이한 개발자이기도 합니다. 그동안 개발을 하면서 많은 경험을 했습니다.
                        작은 홈페이지부터 많은 분들이 알만한 CJOne, 아시아나 항공 홈페이지, 삼성화재 글로벌, SRTPlay 등 많은 프로젝트를 경험했습니다.
                        2019년 부터는 깨알자바 특강을 시작으로, C언어 특강, 정보처리기사 등의 강의를 진행하고 있습니다.</p>

                    <p>장현서 강사는 쌍기술사는 물론 정보처리기사등 많은 자격증을 취득한 이론과 실무에 완변한 강사입니다. </p>

                    <ul class="p-0 m-0 green-ticked wow fadeInUp" data-wow-delay="0.1s"
                    style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                        <li>컴퓨터시스템응용기술사</li>
                        <li>정보관리기술사</li>
                        <li>정보처리기사 등</li>
                    </ul><!-- .green-ticked -->
                </div><!-- .about-stories -->
            </div><!-- .col -->

            <div class="col-12 col-lg-6">
                <div class="about-values wow fadeInUp" data-wow-delay="0.1s"
                style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                    <h3>Our Stories</h3>

                    <p>이해하기 쉬운 설명으로 초심자에게 매우 적합한 강의, 어려운 컴퓨터 용어들을 이해 위주의 수업으로 최대한 쉽게 학습할 수 있도록 가르친다
                        철저하게 분석한 기출 기반의 이론과 문제 풀이 강의 입니다. 정보처리기사의 기출문제를 바탕으로 이론강의부터 실전 문제들의 사례를 들어 수업하기
                        때문에 실제 문제를 좀 더 쉽게 풀이 할 수 있습니다.
                        난이도에 흔들리지 않도록 수업합니다. 정보처리기사의 문제를 쉬운 문제부터 고난이도 문제까지 다루어 어렵게 출제되는 시험도 대비할 수 있도로고 합니다.
                        먼저 소프트웨어공학의 전반적인 이해가 필요합니다 그 이후에 데이터베이스,프로그래밍언어 ,정보보호 등 접근 방식이 효과적입니다.
                    </p>

                    <p>이규원 강사는 쌍기술사는 물론이고 기사 자격증만 총 8개가 있습니다. 기사 자격증에서만큼은 그 누구 보다 빠르고 확실하게 취득할수 있게 여러분을 인도 해줄 것입니다</p>

                    <ul class="p-0 m-0 green-ticked wow fadeInUp" data-wow-delay="0.1s"
                    style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                        <li>정보관리기술사</li>
                        <li>컴퓨터시스템응용기술사</li>
                        <li>정보보안기사 등</li>
                    </ul><!-- .green-ticked -->
                </div><!-- .about-values -->
            </div><!-- .col -->
        </div><!-- .row -->
    </div><!-- .container -->

    <section class="about-section">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-6 align-content-lg-stretch">
                    <header class="heading">
                        <h2 class="entry-title wow fadeInUp" data-wow-delay="0.1s"
                        style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">About Academy</h2>

                        <p>제대로 배우고 제대로 놀아봅시다. 무기력했던 생활에 활력을 불어넣어요 어디에서도 찾아볼 수 없었던 특별한 클래스 지금 시작하세요.</p>
                    </header><!-- .heading -->

                    <div class="entry-content ezuca-stats">
                        <div class="stats-wrap flex flex-wrap justify-content-lg-between wow fadeInUp" data-wow-delay="0.1s"
                        style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                            <div class="stats-count">
                                50<span>M+</span>
                                <p>학승 중인 학생</p>
                            </div><!-- .stats-count -->

                            <div class="stats-count">
                                30<span>K+</span>
                                <p>활성 과정</p>
                            </div><!-- .stats-count -->

                            <div class="stats-count">
                                340<span>M+</span>
                                <p>강사 온라인</p>
                            </div><!-- .stats-count -->

                            <div class="stats-count">
                                20<span>+</span>
                                <p>국가 도달</p>
                            </div><!-- .stats-count -->
                        </div><!-- .stats-wrap -->
                    </div><!-- .ezuca-stats -->
                </div><!-- .col -->

                <div class="col-12 col-lg-6 flex align-content-center mt-5 mt-lg-0">
                    <div class="ezuca-video position-relative wow fadeInUp" data-wow-delay="0.1s"
                    style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                        <div class="video-play-btn position-absolute ">
                            <img src="/resources/images/video-icon.png" alt="Video Play">
                        </div><!-- .video-play-btn -->

                        <img src="/resources/images/video-screenshot.png" alt="">
                    </div><!-- .ezuca-video -->
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </section><!-- .about-section -->

    <section class="testimonial-section">
        <!-- Swiper -->
        <div class="swiper-container testimonial-slider">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-lg-6 order-2 order-lg-1 flex align-items-center mt-5 mt-lg-0 wow fadeInUp" data-wow-delay="0.1s"
                            style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                                <figure class="user-avatar">
                                    <img src="/resources/images/교수.png" alt="">
                                </figure><!-- .user-avatar -->
                            </div><!-- .col -->

                            <div class="col-12 col-lg-6 order-1 order-lg-2 content-wrap h-100">
                                <div class="entry-content wow fadeInUp" data-wow-delay="0.1s"
                                style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                                    <p>저는 어린 나이에 쌍기술사와 기사 자격증만 8개를 보유하고 있습니다 누구보다도 기사 자격증에 관하여는 자신있고 증명했습니다.</p>
                                </div><!-- .entry-content -->

                                <div class="entry-footer wow fadeInUp" data-wow-delay="0.1s"
                                style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                                    <h3 class="testimonial-user">이규원 교수 - <span>University in UK</span></h3>
                                </div><!-- .entry-footer -->
                            </div><!-- .col -->
                        </div><!-- .row -->
                    </div><!-- .container -->
                </div><!-- .swiper-slide -->

                <div class="swiper-slide">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-lg-6 order-2 order-lg-1 flex align-items-center mt-5 mt-lg-0">
                                <figure class="user-avatar wow fadeInUp" data-wow-delay="0.1s"
                                style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                                    <img src="/resources/images/교수2.png" alt="">
                                </figure><!-- .user-avatar -->
                            </div><!-- .col -->

                            <div class="col-12 col-lg-6 order-1 order-lg-2 content-wrap h-100">
                                <div class="entry-content wow fadeInUp" data-wow-delay="0.1s"
                                style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                                	<p>교사, 학생 및 대학으로서 우리는 이 교육을 모든 사람들이 이용할 수 있도록 도울 수 있습니다. 우린 된다고 생각 합니다.</p>
                                        
                                   
                                    
                                    
                                </div><!-- .entry-content -->

                                
                                <div class="entry-footer wow fadeInUp" data-wow-delay="0.1s"
                                style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                                    <h3 class="testimonial-user">장현서 교수  - <span>University in Oxford</span></h3>
                                </div><!-- .entry-footer -->
                            </div><!-- .col -->
                        </div><!-- .row -->
                    </div><!-- .container -->
                </div><!-- .swiper-slide -->

                <div class="swiper-slide">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-lg-6 flex order-2 order-lg-1 align-items-center mt-5 mt-lg-0">
                                <figure class="user-avatar">
                                    <img src="/resources/images/교수3.png" alt="">
                                </figure><!-- .user-avatar -->
                            </div><!-- .col -->

                            <div class="col-12 col-lg-6 order-1 order-lg-2 content-wrap h-100">
                                <div class="entry-content wow fadeInUp" data-wow-delay="0.1s"
                                style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                                   	<p>저는 누구보다 수험생 여러분의 마음을 잘 알고 이해하는  교수진으로써 함께 앞으로 더욱 빛나는 미래를 그립시다</p>
                                </div><!-- .entry-content -->

                                <div class="entry-footer wow fadeInUp" data-wow-delay="0.1s"
                                style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                                    <h3 class="testimonial-user">김동현 교수 - <span>University in Cambridge</span></h3>
                                </div><!-- .entry-footer -->
                            </div><!-- .col -->
                        </div><!-- .row -->
                    </div><!-- .container -->
                </div><!-- .swiper-slide -->
            </div><!-- .swiper-wrapper -->

            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-6 mt-5 mt-lg-0">
                        <div class="swiper-pagination position-relative flex justify-content-center align-items-center"></div>
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .testimonial-slider -->
    </section><!-- .testimonial-section -->

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="team-heading wow fadeInUp" data-wow-delay="0.1s"
                style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                    <h2 class="entry-title">팀 구성진</h2>
                    <p>모두의 미래를 책임지고 빛을 향해 달려가는 길로 인도 하겠습니다.</p>
                </div><!-- .team-heading -->
            </div><!-- .col -->

            <div class="col-12 col-md-6 col-lg-3 wow fadeInUp" data-wow-delay="0.1s"
            style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                <div class="team-member">
                    <img src="/resources/images/교수.png" alt="">

                    <h3>장현서</h3>
                    <h4>JAVA</h4>

                    <ul class="p-0 m-0 d-flex justify-content-center align-items-center">
                        <li><a href="https://ko-kr.facebook.com/"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
                    </ul>
                </div><!-- .team-member -->
            </div><!-- .col -->

            <div class="col-12 col-md-6 col-lg-3 wow fadeInUp" data-wow-delay="0.1s"
            style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                <div class="team-member">
                    <img src="/resources/images/교수2b.png" alt="">

                    <h3>김동현</h3>
                    <h4>Python</h4>

                    <ul class="p-0 m-0 d-flex justify-content-center align-items-center">
                        <li><a href="https://ko-kr.facebook.com/"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="https://kr.linkedin.com/"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
                    </ul>
                </div><!-- .team-member -->
            </div><!-- .col -->

            <div class="col-12 col-md-6 col-lg-3 wow fadeInUp" data-wow-delay="0.1s"
            style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                <div class="team-member">
                    <img src="/resources/images/교수3.png" alt="">

                    <h3>이규원</h3>
                    <h4>DATABASE</h4>

                    <ul class="p-0 m-0 d-flex justify-content-center align-items-center">
                        <li><a href="https://ko-kr.facebook.com/"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="https://kr.linkedin.com/"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
                    </ul>
                </div><!-- .team-member -->
            </div><!-- .col -->

            <div class="col-12 col-md-6 col-lg-3 wow fadeInUp" data-wow-delay="0.1s"
            style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                <div class="team-member">
                    <img src="/resources/images/교수4.png" alt="">

                    <h3>정상구</h3>
                    <h4>C#</h4>

                    <ul class="p-0 m-0 d-flex justify-content-center align-items-center">
                        <li><a href="https://ko-kr.facebook.com/"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="https://kr.linkedin.com/"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
                    </ul>
                </div><!-- .team-member -->
            </div><!-- .col -->
        </div><!-- .row -->
    </div><!-- .container -->

    <div class="clients-logo">
        <div class="container">
            <div class="row">
                <div class="col-12 flex flex-wrap justify-content-center justify-content-lg-between align-items-center">
                    <div class="logo-wrap">
                        <img src="/resources/images/logo-1.png" alt="">
                    </div><!-- .logo-wrap -->

                    <div class="logo-wrap">
                        <img src="/resources/images/logo-2.png" alt="">
                    </div><!-- .logo-wrap -->

                    <div class="logo-wrap">
                        <img src="/resources/images/logo-3.png" alt="">
                    </div><!-- .logo-wrap -->

                    <div class="logo-wrap">
                        <img src="/resources/images/logo-4.png" alt="">
                    </div><!-- .logo-wrap -->

                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .clients-logo -->

    <footer class="site-footer">
        <div class="footer-widgets">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="foot-about">
                            <h1><a href="/" rel="home">Acade<span>my</span></a></h1>

                            <p>세상의 모든 배움의 시작 Academy</p>

                            <p class="footer-copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div><!-- .foot-about -->
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-md-0">
                        <div class="foot-contact">
                            <h2>상담문의</h2>

                            <ul>
                                <li>Email: Academy@gmail.com</li>
                                <li>Phone: 1000-1234</li>
                                <li>Address: 서울특별시 금천구 가산디지털1로 151(가산동, 세진 이노플렉스1차) 306호</li>
                            </ul>
                        </div><!-- .foot-contact -->
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-lg-0">
                        <div class="quick-links flex flex-wrap">
                            <h2 class="w-100">Quick Links</h2>

                            <ul class="w-50">
                                <li><a href="/cr/crList">수강후기</a></li>
                                <li><a href="/product/list">강의&책</a></li>
                                <li><a href="/notice/list">공지사항</a></li>
                                <li><a href="/qna/qnaList">질문&응답</a></li>
                            </ul>

                            <ul class="w-50">
                                <li><a href="/">메인화면</a></li>
                                <li><a href="/event/list">이벤트</a></li>
                                <li><a href="/template/about">About</a></li>
                                <li><a href="#">Instructor</a></li>
                            </ul>
                        </div><!-- .quick-links -->
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-lg-0">
                        <div class="follow-us">
                            <h2>Follow Us</h2>

                            <ul class="follow-us flex flex-wrap align-items-center">
                                <li><a href="https://ko-kr.facebook.com/"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="https://www.google.com/"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
                            </ul>
                        </div><!-- .quick-links -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .footer-widgets -->

       
    </footer><!-- .site-footer -->
    <c:import url="../template/tempjs.jsp"></c:import>
   	<script type='text/javascript' src='/resources/js/jquery.js'></script>
	<script type='text/javascript' src='/resources/js/swiper.min.js'></script>
	<script type='text/javascript' src='/resources/js/masonry.pkgd.min.js'></script>
	<script type='text/javascript' src='/resources/js/jquery.collapsible.min.js'></script>
	<script type='text/javascript' src='/resources/js/custom.js'></script>
</body>
</html>