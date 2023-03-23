<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
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
    
    <style>
        .site-header {
            background-color: rgba(128, 128, 128, 0.5);
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 100;
        }

        .page-content {
            padding-top: 150px;
        }
    </style>
    
</head>
<div class="hero-content">
	 <header class="site-header">
	            <div class="top-header-bar">
	                <div class="container-fluid">
	                    <div class="row">
	                        <div class="col-12 col-lg-6 d-none d-md-flex flex-wrap justify-content-center justify-content-lg-start mb-3 mb-lg-0">
	                            <div class="header-bar-email d-flex align-items-center">
	                                <i class="fa fa-envelope"></i><a href="#">Academy@gmail.com</a>
	                            </div><!-- .header-bar-email -->
	
	                            <div class="header-bar-text lg-flex align-items-center">
	                                <p><i class="fa fa-phone"></i>010-1234-5678 </p>
	                            </div><!-- .header-bar-text -->
	                        </div><!-- .col -->
	
	                        <div class="col-12 col-lg-6 d-flex flex-wrap justify-content-center justify-content-lg-end align-items-center">
	                            <div class="header-bar-search">
	                                <form class="flex align-items-stretch">
	                                    <input type="search" placeholder="무엇을 배우고 싶습니까?">
	                                    <button type="submit" value="" class="flex justify-content-center align-items-center"><i class="fa fa-search"></i></button>
	                                </form>
	                            </div><!-- .header-bar-search -->
	
	                            <div class="header-bar-menu">
	                                <ul class="flex justify-content-center align-items-center py-2 pt-md-0">
	                                <c:if test="${empty member}">
	                                    <li><a href="/member/memberAgree">회원가입</a></li>
	                                    <li><a href="/member/memberLogin">로그인</a></li>
	                                </c:if>
	                                <c:if test="${not empty member}">
	                                	<li><a href="/member/memberPage">회원정보</a></li>
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
	                                    <li><a href="/cr/crList">Review</a></li>
	                                    <li><a href="/product/list">Courses</a></li>
	                                    <li><a href="/notice/list">Notice</a></li>
	                                    <li><a href="/qna/qnaList">QNA</a></li>
	                                    
	                                    <li><a href="/orders/ordersList">ORDER</a></li>
	                                </ul>
	
	                                <div class="hamburger-menu d-lg-none">
	                                    <span></span>
	                                    <span></span>
	                                    <span></span>
	                                    <span></span>
	                                </div><!-- .hamburger-menu -->
	
	                                <div class="header-bar-cart">
	                                    <a href="#" class="flex justify-content-center align-items-center"><span aria-hidden="true" class="icon_bag_alt"></span></a>
	                                </div><!-- .header-bar-search -->
	                            </nav><!-- .site-navigation -->
	                        </div><!-- .col -->
	                    </div><!-- .row -->
	                </div><!-- .container -->
	            </div><!-- .nav-bar -->
	        </header><!-- .site-header -->
		</div><!-- .hero-content -->
