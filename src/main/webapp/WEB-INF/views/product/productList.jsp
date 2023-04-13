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
<link rel="stylesheet" href="/resources/css/productList.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20,400,0,0" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/categoryProductList.css">
<c:import url="../template/tempcss.jsp"></c:import>
<style>
.item {
	padding: 70px;
	margin-bottom: 70px;
}
</style>				
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
						<div class="row mb-4 ">
			
					<div class="category_event">
						<div class="category_cont">
							<ul class="category_ul nav justify-content-center grey lighten-4 py-4 wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
								<li class="nav-item">
									<a class="nav-link active" id="allList">전체</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" id="bookList">책</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" id="crList">강의</a>
								</li>
							</ul>
						</div>
					</div>
				         
						<c:if test="${listcheck != 'empty'}">
							<div class="d-flex justify-content-center">
								<div class="row w-75 mx-auto ">
									<div class="col-lg-12 col-md-12 col-12 ">
										<div class="row col-md-12 d-flex justify-content-end">
											<form class="row g-3" action="./list" method="get" id="searchForm">
												<input type="hidden" name="page" value="1" id="page">
												<div class="col-auto" hidden>
													<label for="kind" class="visually-hidden">Kind</label> <select
														class="form-select" name="kind" id="kind"
														aria-label="Default select example">
														<option value="title" ${pager.kind eq 'title' ? 'selected' :''}>
															Title</option>
													</select>
												</div>
												<div class="col-auto ml-auto">
													<div class="input-group mb-4">
													  <input type="text" class="form-control mb-4 wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;"
														value="${pager.search}" name="search" id="search" placeholder="검색어를 입력하세요">
													  <button type="submit" style="background: none; border: none; cursor: pointer;">
														<img src="/resources/images/search.png" alt="search" width="30" height="30">
													  </button>
													</div>
												  </div>
											</form>
										</div>
										
										<table id="shoppingCart" class="table table-condensed table-responsive ">
											<thead >
												<tr class="wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;"">
													<th style="width:65%">Product</th>
													<th style="width:18%">Price</th>
													<th style="width:18%">Category</th>
													<th style="width:3%"></th>
												</tr>
											</thead>

											<tbody id="productContent">
												<c:forEach items="${list}" var="dto">
													<tr class="my-6 wow fadeInUp" data-wow-delay="0.1s"
														style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
														<td class="item pt-5 pb-5">
															<div class="row">
																<div class="col-md-4 mb-3 ">
																	<c:forEach items="${dto.productImgDTOs}"
																		var="fileDTO">
																		<img class="thumbnail2 radius"
																			src="../resources/images/${fileDTO.save}"
																			class="img-fluid ">
																	</c:forEach>
																</div>
																<div class="col-md-7 pr-5 ml-auto my-auto">
																	<h4 class="mb-5"><a
																			href="./productDetail?num=${dto.num}">${dto.title}</a>
																	</h4>
																	<p class="font-weight-light pt-4">등록일:${dto.regDate}
																	</p>
																</div>
															</div>
														</td>
														<td class="pt-5 pb-5 strongFont align-middle" data-th="Price"><strong>${dto.price}원</strong></td>
														<td class="actions pt-5 pb-5 align-middle" data-th="">
															<div class="mr-auto">
																<c:if test="${dto.categoryNum==1}">
																	<button
																		class="btn btn-white border-secondary bg-white btn-md mb-2">
																		<span
																			class="material-symbols-outlined mt-1">menu_book</span>
																	</button>
																</c:if>
																<c:if test="${dto.categoryNum==2}">
																	<button
																		class="btn btn-white border-secondary bg-white btn-md mb-2">
																		<span
																			class="material-symbols-outlined mt-1">laptop_chromebook</span>
																	</button>
																</c:if>
															</div>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>

										<c:if test="${not empty member}">
											<c:if test="${member.roleDTO.roleName eq 'ADMIN'}">
												<div class="col-12 float-right">
													<button type="button" class="image-button  float-right color-5 wow fadeIn " data-wow-delay="0.1s" onclick="location.href='./productAdd'">
														<img src="/resources/images/pen2.png" alt="Button icon">
														<span>글쓰기</span>
													</button>	
												  </div>
											</c:if>
										</c:if>

									</div>
								</div>
							</div>
						</c:if>
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
// setParam('f');
</script>
</body>
</html>
