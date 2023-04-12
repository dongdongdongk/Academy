<%@page import="com.ac.home.product.ProductDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<c:import url="../template/common_css.jsp"></c:import>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/productList.css">
<link rel="stylesheet" href="/resources/css/categoryProductList.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20,400,0,0" />
<c:import url="../template/tempcss.jsp"></c:import>
</head>


			<body class="courses-page">
            <div class="page-header">
              <div class="page-header-overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <header class="entry-header">
                                    <h1>상품</h1>
                                </header>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
				<c:import url="../template/header.jsp"></c:import>
				<header style="margin-top: 30px;">





					

			

						
					<div class="category_event">
						<div class="category_cont">
							<ul class="category_ul nav justify-content-center grey lighten-4 py-4 wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
								<li class="nav-item">
									<a class="nav-link active" id="allEvent">전체</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" id="continueEvent">책</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" id="endEvent">강의</a>
								</li>
							</ul>
						</div>
					</div>
				         

					












						

	<div class="container-fluid my-10 mx-auto">
    <div class="d-flex justify-content-center">
        <div class="my-element" style="width: 80%; margin: 0 auto;">
						
						
						<c:if test="${listcheck != 'empty'}">
							<div class="d-flex justify-content-center">
								<div class="row w-75 mx-auto ">
									<div class="col-lg-12 col-md-12 col-12 ">
										<h3 class="display-5 mb-2 text-center wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;"></h3>
										<p class="mb-5 text-center">
											<i class="text-info font-weight-bold wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;"></i></p>
										<table id="shoppingCart" class="table table-condensed table-responsive">
											<thead>
												<tr>
													<th style="width:60%">Product</th>
													<th style="width:12%">Price</th>
													<th style="width:12%">Category</th>
													<th style="width:6%"></th>
												</tr>
											</thead>
											
											
											<tbody>
											
												<c:forEach items="${list}" var="dto">
												
													<tr class="my-6 wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
														<td class="item gy-3">
															<div class="row gy-3">
																<c:forEach items="${dto.productImgDTOs}" var="fileDTO">
																<div class="col-md-3 mb-3">
																	<img src="../resources/images/${fileDTO.save}"
																		class="img-fluid ">
																</div>
															</c:forEach>
																<div class="col-md-9 text-left mt-sm-2">
																	<h4><a href="./productDetail?num=${dto.num}">${dto.title}</a></h4>
																	<p class="font-weight-light">등록일:${dto.regDate}</p>
																</div>
															</div>
														</td>
														<td data-th="Price">₩${dto.price}원</td>
														
														<td class="actions" data-th="">
															<div class="text-right">
																<button class="btn btn-white border-secondary bg-white btn-md mb-2">
																	<span class="material-symbols-outlined">menu_book</span>
																</button>
																<button class="btn btn-white border-secondary bg-white btn-md mb-2">
																	<span class="material-symbols-outlined">laptop_chromebook</span>
																</button>
															</div>
														</td>
													</tr>
													
												</c:forEach>
											</tbody>
										</table>
										
									</div>
								</div>
							</div>
						</c:if>
								<!-- 검색창 -->
						<div class="row col-md-7 mx-auto">
						<div class="d-flex justify-content-center">
        					<div class="my-element" style="width: 80%; margin: 0; margin-top: 20px;">
							<form class="row g-3" action="./list" method="get" id="searchForm">
								<input type="hidden" name="page" value="1" id="page">
								<div class="col-auto">
									<label for="kind" class="visually-hidden">Kind</label> <select class="form-select"
										name="kind" id="kind" aria-label="Default select example">
										<option value="title" ${pager.kind eq 'title' ? 'selected' :''}>상품 이름</option>
										<%-- <option value="contents" ${pager.kind eq 'info' ? 'selected' :''}>info
											</option> --%>
											<%-- <option value="writer" ${pager.kind eq 'writer' ? 'selected'
												:''}>Writer</option> --%>
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
							<div class="row mx-auto">
							<c:if test="${not empty member}">

								<c:if test="${member.roleDTO.roleName eq 'ADMIN'}">
									<div class="row col-md-7 mx-auto">
										<a href="./productAdd" class="btn btn-outline-warning col-5">상품등록</a>
									</div>
								</c:if>
							</c:if>
							</div>
						</div>
							</div>
					     </div>
					</div>
				</div>
   		</div>		
</header>
				<c:import url="../template/topBtn.jsp"></c:import>
<c:import url="../template/tempjs.jsp"></c:import>
<c:import url="../template/common_js.jsp"></c:import>
<c:import url="../template/bottom.jsp"></c:import>
<script src="../resources/js/temp/move.js"></script>
<c:import url="../template/kakao.jsp"></c:import>
<script src="../../../resources/js/productAjax.js"></script>
<script src="../../../resources/js/category.js"></script>
<script src="/resources/css/goodsManage.css"></script>
<script src="../resources/js/pageing.js"></script>
<script src="../resources/js/fileManger.js"></script>
<script>
setMax(1);
$("#bookDetail").summernote();
// setParam('f');
</script>
</body>
</html>
