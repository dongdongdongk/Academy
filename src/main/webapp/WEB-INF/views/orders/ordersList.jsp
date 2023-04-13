<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.table {
  border-collapse: collapse;
  width: 100%;
  margin-bottom: 1rem;
  background-color: #fff;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.table th,
.table td {
  padding: 1rem;
  text-align: left;
  vertical-align: top;
  border-top: 1px solid #dee2e6;
}

.table th {
  font-weight: bold;
  background-color: #212529;
  color: #fff;
  border-color: #32383e;
}
.table td {
  background-color: #f8f9fa;
}

.table a {
  color: #007bff;
  text-decoration: none;
}

.table a:hover {
  color: #0056b3;
  text-decoration: underline;
}
</style>
<meta charset="UTF-8">
<title>흥델쌤 강의 목록</title>
<c:import url="../template/common_css.jsp"></c:import>



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
    <link rel="stylesheet" href="/resources/css/csStyle.css">
</head>
<body class="courses-page">
            <div class="page-header">
              <div class="page-header-overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <header class="entry-header">
                                    <h1>강의 영상</h1>
                                </header><!-- .entry-header -->
                            </div><!-- .col -->
                        </div><!-- .row -->
                    </div><!-- .container -->
                </div><!-- .page-header-overlay -->
            </div><!-- .page-header -->
	
	<c:import url="../template/header.jsp"></c:import>
	<header style="margin-top: 50px;">
	<hr>
		<div class="row col-md-7 mx-auto">
			<table class="table">
			  	<thead class="table-dark">
			 		<tr>
						<th>강의 목차</th>
					</tr>
			 	</thead>
			 	
			  	<tbody>
			  		<c:forEach items="${list}" var="dto">
						<tr>
							<td class="tbl_td"><a href="./ordersDetail?orderNum=${dto.orderNum}">${dto.title}</a></td>
							
				    </c:forEach>
									
				
			  	</tbody>
			</table>
			
			
			<c:if test="${member.roleDTO.roleName eq 'ADMIN'}">
			<div class="row col-auto mx-auto">
				<a class="btn btn-primary mb-3" href="./ordersAdd">글 등록</a>
			</div>	
				</c:if>
			
		</div>
		
	
</header>	
	<c:import url="../template/common_js.jsp"></c:import>
	<c:import url="../template/bottom.jsp"></c:import>
  <c:import url="../template/kakao.jsp"></c:import>
	<script src="../resources/js/pageing.js"></script>
	
</body>
</html>