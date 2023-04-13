<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 
<c:forEach items="${list}" var="dto">
	<c:if test="${dto.categoryNum == 1}">
	    <tr>
	        <td>${dto.num}</td>
	        <td class="tbl_td">
	            <div class="row">
	                <c:forEach items="${dto.productImgDTOs}" var="fileDTO">
	                    <div class="col-md-10 mb-10">
	                        <img src="../resources/images/${fileDTO.save}" class="img-fluid " >
	                    </div>
	                </c:forEach>
	            </div>
	        </td>
	        <td class="tbl_td"><a href="./productDetail?num=${dto.num}">${dto.title}</a></td>
	        <td class="tbl_td">${dto.price}</td>
	        <td class="tbl_td">${dto.regDate}</td>
	        <td class="tbl_td">${dto.categoryNum eq 1 ? '책' : '강의'}</td>
	    </tr>
   </c:if>
</c:forEach> -->

<c:forEach items="${list}" var="dto">
	<c:if test="${dto.categoryNum == 1}">
<tr class="my-6 wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
														<td class="item pt-5 pb-5">
															<div class="row">
																<div class="col-md-4 mb-4 ">
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
												</c:if>
											</c:forEach>													







