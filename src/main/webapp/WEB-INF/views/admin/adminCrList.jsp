<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

			<h1 style="text-align: center; margin: 50px 0;">수강 후기</h1>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>삭제여부</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="dto">
						<tr>
							<td>${dto.num}</td>
							<td>${dto.title}</td>
							<td>${dto.writer}</td>
							<td>${dto.regDate}</td>
							<td><button data-cr-num="${dto.num}" class="delBtn btn btn-danger">X</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<script>
				$(".delBtn").on("click", function(){

					let check = window.confirm("정말 삭제 하시겠습니까?");	

					if(check){
						let num = $(this).attr("data-cr-num");

						$.ajax({
							url: "/member/crDelete",
							type: "POST",
							data: {
								num: num
							},
							success: function() {
								alert("삭제 성공했습니다.")
								window.location.reload();
							}
						})
					}	
				})
			</script>