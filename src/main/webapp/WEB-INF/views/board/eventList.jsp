<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<!doctype html>
<!--[if IE 9]> <html class="no-js ie9 fixed-layout" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js " lang="en"> <!--<![endif]-->
<head>

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <!-- Mobile Meta -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    
    <!-- Site Meta -->
    <title>Edulogy</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet"> 
    <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,400i,700,700i" rel="stylesheet"> 
    
    <!-- Custom & Default Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/carousel.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="style.css">

    <!--[if lt IE 9]>
        <script src="js/vendor/html5shiv.min.js"></script>
        <script src="js/vendor/respond.min.js"></script>
    <![endif]-->

</head>
<body>  

    <!-- LOADER -->
    <div id="preloader">
        <img class="preloader" src="images/loader.gif" alt="">
    </div><!-- end loader -->
    <!-- END LOADER -->

    <div id="wrapper">
        <!-- BEGIN # MODAL LOGIN -->
        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Begin # DIV Form -->
                    <div id="div-forms">
                        <form id="login-form">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span class="flaticon-add" aria-hidden="true"></span>
                            </button>
                            <div class="modal-body">
                                <input class="form-control" type="text" placeholder="What you are looking for?" required>
                            </div>
                        </form><!-- End # Login Form -->
                    </div><!-- End # DIV Form -->
                </div>
            </div>
        </div>
        <!-- END # MODAL LOGIN -->

        <header class="header">
            <div class="topbar clearfix">
                <div class="container">
                    <div class="row-fluid">
                        <div class="col-md-6 col-sm-6 text-left">
                            <p>
                                <strong><i class="fa fa-phone"></i></strong> +90 543 123 45 67 &nbsp;&nbsp;
                                <strong><i class="fa fa-envelope"></i></strong> <a href="mailto:#">info@yoursite.com</a>
                            </p>
                        </div><!-- end left -->
                        <div class="col-md-6 col-sm-6 hidden-xs text-right">
                            <div class="social">
                                <a class="facebook" href="#" data-tooltip="tooltip" data-placement="bottom" title="Facebook"><i class="fa fa-facebook"></i></a>              
                                <a class="twitter" href="#" data-tooltip="tooltip" data-placement="bottom" title="Twitter"><i class="fa fa-twitter"></i></a>
                                <a class="google" href="#" data-tooltip="tooltip" data-placement="bottom" title="Google Plus"><i class="fa fa-google-plus"></i></a>
                                <a class="linkedin" href="#" data-tooltip="tooltip" data-placement="bottom" title="Linkedin"><i class="fa fa-linkedin"></i></a>
                                <a class="pinterest" href="#" data-tooltip="tooltip" data-placement="bottom" title="Pinterest"><i class="fa fa-pinterest"></i></a>
                            </div><!-- end social -->
                        </div><!-- end left -->
                    </div><!-- end row -->
                </div><!-- end container -->
            </div><!-- end topbar -->

            <div class="container">
                <nav class="navbar navbar-default yamm">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <div class="logo-normal">
                            <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt=""></a>
                        </div>
                    </div>

                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="index.html">Home</a></li>
                            <li class="dropdown yamm-fw yamm-half"><a href="#" data-toggle="dropdown" class="dropdown-toggle active">Mega Menu <b class="fa fa-angle-down"></b></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <div class="yamm-content clearfix">
                                            <div class="row-fluid">
                                                <div class="col-md-6 col-sm-6">
                                                    <h4>Course Pages</h4>
                                                    <ul>
                                                        <li><a href="#">Courses Name 01</a></li>
                                                        <li><a href="#">Courses Name 02</a></li>
                                                        <li><a href="#">Courses Name 03</a></li>
                                                        <li><a href="#">Courses Name 04</a></li>
                                                        <li><a href="#">Courses Name 05</a></li>
                                                        <li><a href="#">Courses Name 06</a></li>
                                                        <li><a href="#">Courses Name 07</a></li>
                                                        <li><a href="#">Courses Name 08</a></li>
                                                        <li><a href="#">Courses Name 09</a></li>
                                                    </ul>
                                                </div>
                                                <div class="col-md-6 col-sm-6">
                                                    <div class="menu-widget text-center">
                                                        <div class="image-wrap entry">
                                                            <img src="upload/course_01.jpg" alt="" class="img-responsive">
                                                            <div class="magnifier">
                                                                 <a href="#" title=""><i class="flaticon-add"></i></a>
                                                            </div>
                                                        </div><!-- end image-wrap -->
                                                        <h5><a href="#">Learning Bootstrap Framework</a></h5>
                                                        <small>$22.00</small>
                                                        <a href="#" class="menu-button">View Course</a>
                                                    </div><!-- end widget -->
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="events.html">Events</a></li>
                            <li class="dropdown hassubmenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Shop <span class="fa fa-angle-down"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="shop.html">Shop Layout</a></li>
                                    <li><a href="shop-single.html">Shop Single</a></li>
                                </ul>
                            </li>
                            <li class="dropdown hassubmenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Blog <span class="fa fa-angle-down"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="blog.html">Blog Right Sidebar</a></li>
                                    <li><a href="blog-1.html">Blog Left Sidebar</a></li>
                                    <li><a href="blog-2.html">Blog Grid Sidebar</a></li>
                                    <li><a href="blog-3.html">Blog Grid Fullwidth</a></li>
                                    <li><a href="blog-single.html">Blog Single</a></li>
                                </ul>
                            </li>
                            <li><a href="page-contact.html">Contact</a></li>
                            <li class="iconitem"><a href="#" data-toggle="modal" data-target="#login-modal"><i class="fa fa-search"></i></a></li>
                            <li class="iconitem"><a class="shopicon" href="shop-cart.html"><i class="fa fa-shopping-basket"></i> &nbsp;(0)</a></li>
                        </ul>
                    </div>
                </nav><!-- end navbar -->
            </div><!-- end container -->
        </header>

        <section class="parallax event-section" data-stellar-background-ratio="0.5" style="background-image:url('upload/parallax_01.jpeg');">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="tagline-message event-title text-center">
                            <h3>Edulogy Meetup Event 2018</h3>
                            <p>21 - 26 Aug, 2018, San Francisco, CA - Limited number of guests</p>
                            <a href="#" class="btn btn-primary">GET TICKETS</a>
                        </div>
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section><!-- end section -->

        <section class="section gb nopadtop">
            <div class="container">
                <div class="row event-boxes">
                    <div class="col-md-4">
                        <div class="box m30">
                            <img src="upload/blog_01.jpg" alt="" class="img-responsive">
                            <div class="event-desc">
                            <small>Day 1</small>
                            <h4>Gathering & welcome speech</h4>
                            <p>Ut volutpat elementum venenatis. In id neque nec tellus iaculis semper. Aenean fringilla velit ut leo luctus, blandit aliquet turpis dictum.</p>
                            </div>
                        </div>
                    </div><!-- end col -->

                    <div class="col-md-4">
                        <div class="box m30">
                            <img src="upload/blog_02.jpg" alt="" class="img-responsive">
                            <div class="event-desc">
                            <small>Day 2</small>
                            <h4>Successful Marketing Strategy</h4>
                            <p>Morbi nec ornare ipsum. Curabitur tortor sapien, faucibus commodo metus porta, venenatis lobortis nibh. Proin molestie est et nunc aliquam iaculis.</p>
                            </div>
                        </div>
                    </div><!-- end col -->

                    <div class="col-md-4">
                        <div class="box m30">
                            <img src="upload/blog_03.jpg" alt="" class="img-responsive">
                            <div class="event-desc">
                            <small>Day 3</small>
                            <h4>Award and certificate distribution</h4>
                            <p> Mauris cursus, ipsum eget mollis pretium, nisl felis rhoncus nulla, sed dignissim ligula lorem ac enim. Pellentesque quis libero feugiat, lacinia.</p>
                            </div>
                        </div>
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section>

        <section class="section">
            <div class="container">
                <div class="section-title text-center">
                    <h3>Meet Our Speakers</h3>
                    <p>Maecenas sit amet tristique turpis. Quisque porttitor eros quis leo pulvinar, at hendrerit sapien iaculis. Donec consectetur accumsan arcu, sit amet fringilla ex ultricies.</p>
                </div><!-- end title -->

                <div class="row text-center">
                    <div class="col-md-4 col-sm-6">
                        <div class="teammembers">
                            <div class="entry">
                                <img src="upload/01_team.png" alt="" class="img-responsive">
                                <div class="magnifier">
                                    <div class="visible-buttons1 teambuttons">
                                        <p>Weâre committed to work and play our client meeting room transforms  into a table tennis</p>
                                        <div class="social-links">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-dribbble"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-skype"></i></a>
                                        </div><!-- end social -->
                                    </div>
                                </div>
                            </div><!-- end box -->
                            <div class="teamdesc">
                                <h4>Ruben Franklin</h4>
                                <p>Web Design Builder & Seo Specialist</p>
                            </div><!-- end teamdesc -->
                        </div><!-- end teammembers -->
                    </div><!-- end col -->

                    <div class="col-md-4 col-sm-6">
                        <div class="teammembers">
                            <div class="entry">
                                <img src="upload/02_team.png" alt="" class="img-responsive">
                                <div class="magnifier">
                                    <div class="visible-buttons1 teambuttons">
                                        <p>Weâre committed to work and play our client meeting room transforms  into a table tennis</p>
                                        <div class="social-links">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-dribbble"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-skype"></i></a>
                                        </div><!-- end social -->
                                    </div>
                                </div>
                            </div><!-- end box -->
                            <div class="teamdesc">
                                <h4>Martin Juhnson</h4>
                                <p>Web Design Builder & Seo Specialist</p>
                            </div><!-- end teamdesc -->
                        </div><!-- end teammembers -->
                    </div><!-- end col -->

                    <div class="col-md-4 col-sm-6">
                        <div class="teammembers">
                            <div class="entry">
                                <img src="upload/03_team.png" alt="" class="img-responsive">
                                <div class="magnifier">
                                    <div class="visible-buttons1 teambuttons">
                                        <p>Weâre committed to work and play our client meeting room transforms  into a table tennis</p>
                                        <div class="social-links">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-dribbble"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-skype"></i></a>
                                        </div><!-- end social -->
                                    </div>
                                </div>
                            </div><!-- end box -->
                            <div class="teamdesc">
                                <h4>Bob Dylean</h4>
                                <p>Web Design Builder & Seo Specialist</p>
                            </div><!-- end teamdesc -->
                        </div><!-- end teammembers -->
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section>


        <section class="section bgcolor1">
            <div class="container">
                <a href="#">
                <div class="row callout">
                    <div class="col-md-4 text-center">
                        <h3><sup>$</sup>49.99</h3>
                        <h4>Start your awesome course today!</h4>
                    </div><!-- end col -->

                    <div class="col-md-8">
                        <p class="lead">Limited time offer! Your profile will be added to our "Students" directory as well. </p>
                    </div>
                </div><!-- end row -->
                </a>
            </div><!-- end container -->  
        </section>

        <footer class="section footer noover">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <div class="widget clearfix">
                            <h3 class="widget-title">Subscribe Our Newsletter</h3>
                            <div class="newsletter-widget">
                                <p>You can opt out of our newsletters at any time.<br> See our <a href="#">privacy policy</a>.</p>
                                <form class="form-inline" role="search">
                                    <div class="form-1">
                                        <input type="text" class="form-control" placeholder="Enter email here..">
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-paper-plane-o"></i></button>
                                    </div>
                                </form>
                                <img src="images/payments.png" alt="" class="img-responsive">
                            </div><!-- end newsletter -->
                        </div><!-- end widget -->
                    </div><!-- end col -->

                    <div class="col-lg-3 col-md-3">
                        <div class="widget clearfix">
                            <h3 class="widget-title">Join us today</h3>
                            <p>Would you like to earn your profits by joining our team? Join us without losing time.</p>
                            <a href="#" class="readmore">Became a Teacher</a>
                        </div><!-- end widget -->
                    </div><!-- end col -->

                    <div class="col-lg-3 col-md-3">
                        <div class="widget clearfix">
                            <h3 class="widget-title">Popular Tags</h3>
                            <div class="tags-widget">   
                                <ul class="list-inline">
                                    <li><a href="#">course</a></li>
                                    <li><a href="#">web design</a></li>
                                    <li><a href="#">development</a></li>
                                    <li><a href="#">language</a></li>
                                    <li><a href="#">teacher</a></li>
                                    <li><a href="#">speaking</a></li>
                                    <li><a href="#">material</a></li>
                                    <li><a href="#">css3</a></li>
                                    <li><a href="#">html</a></li>
                                    <li><a href="#">learning</a></li>
                                </ul>
                            </div><!-- end list-widget -->
                        </div><!-- end widget -->
                    </div><!-- end col -->

                    <div class="col-lg-2 col-md-2">
                        <div class="widget clearfix">
                            <h3 class="widget-title">Support</h3>
                            <div class="list-widget">   
                                <ul>
                                    <li><a href="#">Terms of Use</a></li>
                                    <li><a href="#">Copyrights</a></li>
                                    <li><a href="#">Create a Ticket</a></li>
                                    <li><a href="#">Pricing & Plans</a></li>
                                    <li><a href="#">Carrier</a></li>
                                    <li><a href="#">Trademark</a></li>
                                </ul>
                            </div><!-- end list-widget -->
                        </div><!-- end widget -->
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </footer><!-- end footer -->

        <div class="copyrights">
            <div class="container">
                <div class="clearfix">
                    <div class="pull-left">
                        <div class="cop-logo">
                            <a href="#"><img src="images/logo.png" alt=""></a>
                        </div>
                    </div>

                    <div class="pull-right">
                        <div class="footer-links">
                            <ul class="list-inline">
                                <li>Design : <a href="https://html.design">HTML.Design</a></li>
                                <li>Distributed by : <a href="https://themewagon.com/" target="_blank">ThemeWagon</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div><!-- end container -->
        </div><!-- end copy -->
    </div><!-- end wrapper -->

    <!-- jQuery Files -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/parallax.js"></script>
    <script src="js/animate.js"></script>
    <script src="js/custom.js"></script>
    <!-- VIDEO BG PLUGINS -->
    <script src="js/videobg.js"></script>

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
            <c:import url="../template/common_css.jsp"></c:import>
        </head>

        

        <body class="courses-page">
            <div class="page-header">
                <header class="site-header">
                    <div class="top-header-bar">
                        <div class="container-fluid">
                            <div class="row">
                                <div
                                    class="col-12 col-lg-6 d-none d-md-flex flex-wrap justify-content-center justify-content-lg-start mb-3 mb-lg-0">
                                    <div class="header-bar-email d-flex align-items-center">
                                        <i class="fa fa-envelope"></i><a href="#">tuanna.design@gmail.com</a>
                                    </div><!-- .header-bar-email -->

                                    <div class="header-bar-text lg-flex align-items-center">
                                        <p><i class="fa fa-phone"></i>001-1234-88888 </p>
                                    </div><!-- .header-bar-text -->
                                </div><!-- .col -->

                                <div
                                    class="col-12 col-lg-6 d-flex flex-wrap justify-content-center justify-content-lg-end align-items-center">
                                    <div class="header-bar-search">
                                        <form class="flex align-items-stretch">
                                            <input type="search" placeholder="What would you like to learn?">
                                            <button type="submit" value=""
                                                class="flex justify-content-center align-items-center"><i
                                                    class="fa fa-search"></i></button>
                                        </form>
                                    </div><!-- .header-bar-search -->

                                    <div class="header-bar-menu">
                                        <ul class="flex justify-content-center align-items-center py-2 pt-md-0">
                                            <li><a href="#">Register</a></li>
                                            <li><a href="#">Login</a></li>
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
                                        <h1 class="site-title"><a href="index.html" rel="home">Ezu<span>ca</span></a>
                                        </h1>
                                    </div><!-- .site-branding -->
                                </div><!-- .col -->

                                <div class="col-3 col-lg-9 flex justify-content-end align-content-center">
                                    <nav class="site-navigation flex justify-content-end align-items-center">
                                        <ul
                                            class="flex flex-column flex-lg-row justify-content-lg-end align-content-center">
                                            <li class="current-menu-item"><a href="index.html">Home</a></li>
                                            <li><a href="#">About</a></li>
                                            <li><a href="#">Courses</a></li>
                                            <li><a href="#">blog</a></li>
                                            <li><a href="#">Contact</a></li>
                                        </ul>

                                        <div class="hamburger-menu d-lg-none">
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                        </div><!-- .hamburger-menu -->

                                        <div class="header-bar-cart">
                                            <a href="#" class="flex justify-content-center align-items-center"><span
                                                    aria-hidden="true" class="icon_bag_alt"></span></a>
                                        </div><!-- .header-bar-search -->
                                    </nav><!-- .site-navigation -->
                                </div><!-- .col -->
                            </div><!-- .row -->
                        </div><!-- .container -->
                    </div><!-- .nav-bar -->
                </header><!-- .site-header -->









                <div class="page-header-overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <header class="entry-header">
                                    <h1>ì´ë²¤í¸</h1>
                                </header><!-- .entry-header -->
                            </div><!-- .col -->
                        </div><!-- .row -->
                    </div><!-- .container -->
                </div><!-- .page-header-overlay -->
            </div><!-- .page-header -->








            <ul class="nav justify-content-center grey lighten-4 py-4">
                <li class="nav-item">
                    <a class="nav-link active" id="allEvent">ì ì²´</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="continueEvent">ì§íì¤</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="endEvent">ì¢ë£</a>
                </li>
            </ul>



            <!-- íì¬ë ì§ -->
            <c:set var="now" value="<%=new java.util.Date()%>" />
            <c:set var="today"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set> 

            <c:out value="${today}" />




            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumbs">
                            <ul class="flex flex-wrap align-items-center p-0 m-0">
                                <li><a href="/"><i class="fa fa-home"></i> í</a></li>
                                <li>ì´ë²¤í¸</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-7col-lg-8">
                       <div id="eventResult">
                            <div class="featured-courses courses-wrap">
                                <div class="row mx-m-25">
                                
                                    <c:forEach items="${list}" var="dto">
                                        <div class="col-3 col-md-3 px-25">
                                            <div class="course-content">
                                                <figure class="course-thumbnail">
                                                    <c:set var="loop_flag" value="false" />
                                                    <c:forEach items="${dto.eventFileDTOs}" var="fileDTO">
                                                        <c:if test="${today > dto.endDate}">
                                                            <c:if test="${not loop_flag }">
                                                                <c:if test="${not empty dto.eventFileDTOs}">
                                                                    <img class="radius grayscale" src="../resources/upload/event/${fileDTO.fileName}">
                                                                    <c:set var="loop_flag" value="true" />
                                                                </c:if>
                                                            </c:if>
                                                        </c:if>                
                                                        
                                                        
                                                            <c:if test="${not loop_flag }">
                                                                <c:if test="${not empty dto.eventFileDTOs}">
                                                                    <img class="radius" src="../resources/upload/event/${fileDTO.fileName}">
                                                                    <c:set var="loop_flag" value="true" />
                                                                </c:if>
                                                            </c:if>
                                                        
                                                   
                                                   
                                                    </c:forEach>
                            
                                                </figure>
                            
                                                <div class="course-content-wrap">
                                                    <header class="entry-header">
                                                        <h2 class="entry-title"><a
                                                                href="./detail?num=${dto.num}">${dto.title}</a>
                            
                                                            <c:set var="loop_flag" value="false" />
                                                            <c:forEach items="${dto.eventFileDTOs}" var="fileDTO">
                                                                <c:if test="${not loop_flag }">
                                                                    <c:if test="${fileDTO.oriName ne null}"><img
                                                                            class="material-symbols-outlined"
                                                                            src="/resources/images/file_icon.gif">
                                                                        <c:set var="loop_flag" value="true" />
                                                                    </c:if>
                                                                </c:if>
                                                            </c:forEach>
                                                            </td>
                                                        </h2>
                            
                            
                            
                                                        <div class="entry-meta flex flex-wrap align-items-center">
                                                            <div class="course-author"><a href="#">${dto.writer} </a>
                                                            </div>
                                                            <div id="startDate" data-start-event="${dto.startDate}" class="course-date">ììì¼${dto.startDate}</div>
                                                            <div id="endDate" data-end-event="${dto.endDate}" class="course-date">ì¢ë£ì¼${dto.endDate}</div>
                                                            <div class="course-date">ì¡°íì${dto.hit}</div>
                                                        </div>
                                                    </header>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div> 


                        <div class="row">
                            <div class="d-felx justify-content-center">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination d-felx justify-content-center">

                                        <li class="page-item ${pager.before ? 'disabled' : ''}">
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
                        </div>
                    </div><!-- .col -->


                </div><!-- .row -->
            </div><!-- .container -->
            <a href="./add">ê¸ì°ê¸°</a>

            <div class="clients-logo">
                <div class="container">
                    <div class="row">
                        <div
                            class="col-12 flex flex-wrap justify-content-center justify-content-lg-between align-items-center">
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

                            <div class="logo-wrap">
                                <img src="/resources/images/logo-5.png" alt="">
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
                                    <a class="foot-logo" href="#"><img src="/resources/images/foot-logo.png" alt=""></a>

                                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia dese
                                        mollit anim id est laborum. </p>

                                    <p class="footer-copyright">
                                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                        Copyright &copy;
                                        <script>document.write(new Date().getFullYear());</script> All rights reserved |
                                        This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by
                                        <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    </p>
                                </div><!-- .foot-about -->
                            </div><!-- .col -->

                            <div class="col-12 col-md-6 col-lg-3 mt-5 mt-md-0">
                                <div class="foot-contact">
                                    <h2>Contact Us</h2>

                                    <ul>
                                        <li>Email: info.deertcreative@gmail.com</li>
                                        <li>Phone: (+88) 111 555 666</li>
                                        <li>Address: 40 Baria Sreet 133/2 NewYork City, US</li>
                                    </ul>
                                </div><!-- .foot-contact -->
                            </div><!-- .col -->

                            <div class="col-12 col-md-6 col-lg-3 mt-5 mt-lg-0">
                                <div class="quick-links flex flex-wrap">
                                    <h2 class="w-100">Quick Links</h2>

                                    <ul class="w-50">
                                        <li><a href="#">About </a></li>
                                        <li><a href="#">Terms of Use </a></li>
                                        <li><a href="#">Privacy Policy </a></li>
                                        <li><a href="#">Contact Us</a></li>
                                    </ul>

                                    <ul class="w-50">
                                        <li><a href="#">Documentation</a></li>
                                        <li><a href="#">Forums</a></li>
                                        <li><a href="#">Language Packs</a></li>
                                        <li><a href="#">Release Status</a></li>
                                    </ul>
                                </div><!-- .quick-links -->
                            </div><!-- .col -->

                            <div class="col-12 col-md-6 col-lg-3 mt-5 mt-lg-0">
                                <div class="follow-us">
                                    <h2>Follow Us</h2>

                                    <ul class="follow-us flex flex-wrap align-items-center">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    </ul>
                                </div><!-- .quick-links -->
                            </div><!-- .col -->
                        </div><!-- .row -->
                    </div><!-- .container -->
                </div><!-- .footer-widgets -->

                <div class="footer-bar">
                    <div class="container">
                        <div class="row flex-wrap justify-content-center justify-content-lg-between align-items-center">
                            <div class="col-12 col-lg-6">
                                <div
                                    class="download-apps flex flex-wrap justify-content-center justify-content-lg-start align-items-center">
                                    <a href="#"><img src="/resources/images/app-store.png" alt=""></a>
                                    <a href="#"><img src="/resources/images/play-store.png" alt=""></a>
                                </div><!-- .download-apps -->

                            </div>

                            <div class="col-12 col-lg-6 mt-4 mt-lg-0">
                                <div class="footer-bar-nav">
                                    <ul
                                        class="flex flex-wrap justify-content-center justify-content-lg-end align-items-center">
                                        <li><a href="#">DPA</a></li>
                                        <li><a href="#">Terms of Use</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                    </ul>
                                </div><!-- .footer-bar-nav -->
                            </div><!-- .col-12 -->
                        </div><!-- .row -->
                    </div><!-- .container -->
                </div><!-- .footer-bar -->
            </footer><!-- .site-footer -->

            <c:import url="../template/common_js.jsp"></c:import>
            <script src="../resources/js/pageing.js"></script>
            <script type='text/javascript' src='/resources/js/jquery.js'></script>
            <script type='text/javascript' src='/resources/js/swiper.min.js'></script>
            <script type='text/javascript' src='/resources/js/masonry.pkgd.min.js'></script>
            <script type='text/javascript' src='/resources/js/jquery.collapsible.min.js'></script>
            <script type='text/javascript' src='/resources/js/custom.js'></script>
            <script type='text/javascript' src='/resources/js/eventDate.js'></script>
        </body>

        </html>