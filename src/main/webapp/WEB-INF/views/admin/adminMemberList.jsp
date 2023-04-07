<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

			<h1 style="text-align: center; margin: 50px 0;">회원 리스트</h1>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>회원ID</th>
						<th>이름</th>
						<th>Email</th>
						<th>전화번호</th>
						<th>주소</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="vo">
						<tr>
							<td>${vo.id}</td>
							<td>${vo.name}</td>
							<td>${vo.email}</td>
							<td>${vo.phone}</td>
							<td>${vo.address}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
