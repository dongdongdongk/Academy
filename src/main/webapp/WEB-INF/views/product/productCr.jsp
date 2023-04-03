<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${list}" var="dto">
	<c:if test="${dto.categoryNum == 2}">
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
</c:forEach>							