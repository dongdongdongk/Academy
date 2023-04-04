<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/menu/eventIcon.css">
<c:import url="../template/common_css.jsp"></c:import>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.1.0/kakao.min.js"
  integrity="sha384-dpu02ieKC6NUeKFoGMOKz6102CLEWi9+5RQjWSV0ikYSFFd8M3Wp2reIcquJOemx" crossorigin="anonymous"></script>
<script>
  Kakao.init('41d534ae5dc3fb8670ff2f84bd5cf770'); // 사용하려는 앱의 JavaScript 키 입력
</script>

</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<div class="container-fluid">
		<div class="row my-5 col-md-2 mx-auto">
			<h1>NoticeList</h1>
		</div>


		  
		<div class="row col-md-7 mx-auto">
			<table class="table">
			  	<thead class="table-dark">
			 		<tr>
						<th>NUM</th>
						<th>TITLE</th>
						<th>WRITER</th>
						<th>Date</th>
						<th>HIT</th>
					</tr>
			 	</thead>
			 	
			  	<tbody>
			  		<c:forEach items="${list}" var="dto">
						<tr>
							<c:if test="${not empty member}">

								<c:if test="${member.roleDTO.roleName eq 'ADMIN'}">
									<td><input type="checkbox" class="check-item" data-num-check="${dto.checked}"></td>
									
								</c:if>
							</c:if>



							<td><input hidden type="checkbox" class="check-item" data-num-check="${dto.checked}"></td>
							<td class="noticeNum" data-num-id="${dto.num}">${dto.num}</td>
							<td class="d-flex align-items-center">
								
								<a class="title" href="./detail?num=${dto.num}">${dto.title}</a>
									
								<c:forEach items="${dto.noticeFileDTOs}" var="fileDTO">
								<c:if test="${fileDTO.oriName ne null}"><img class="iconSize" src="/resources/images/file1.png"></c:if>
							</c:forEach></td>
							
							<td>${dto.writer}</td>
							<td>${dto.regDate}</td>
							<td>${dto.hit}</td>
						</tr>
					</c:forEach>
			  	</tbody>
				
			</table>
			

			<div class="row">
				<nav aria-label="Page navigation example">
				  <ul class="pagination">
				  
				  <li class="page-item ${pager.before ? 'disabled' : ''}">
				      <a class="page-link" href="#" aria-label="Previous" data-board-page="1">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				 
				    <li class="page-item ${pager.before ? 'disabled' : ''}">
				      <a class="page-link" href="#" aria-label="Previous" data-board-page="${pager.startNum-1}">
				        <span aria-hidden="true">&lsaquo;</span>
				      </a>
				    </li>
				    
				    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
				    	<li class="page-item"><a class="page-link" href="#" data-board-page="${i}">${i}</a></li>
				    </c:forEach>
				    
				    <li class="page-item ${pager.after eq false ? 'disabled' : ''}">
				      <a class="page-link" href="#" aria-label="Next" data-board-page="${pager.lastNum+1}">
				        <span aria-hidden="true">&rsaquo;</span>
				      </a>
				    </li>
				    
				    <li class="page-item ${pager.after eq false ? 'disabled' : ''}">
				      <a class="page-link" href="#" aria-label="Next" data-board-page="${pager.totalPage}">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				</nav>
			</div>
		
			<div class="d-flex align-items-center">
				<div id="add-channel-button"></div>
		
				<div id="kakao-talk-channel-chat-button"></div>
			</div>
		
		<script>
			Kakao.Channel.createAddChannelButton({
			  container: '#add-channel-button',
			  channelPublicId: '_zRYLxj',
			});

			Kakao.Channel.createChatButton({
  			container: '#kakao-talk-channel-chat-button',
 			channelPublicId: '_zRYLxj'
			});
		
		</script>
		
			
			<div class="row">
				<form class="row g-3" action="./list" method="get" id="searchForm">
					<input type="hidden" name="page" value="1" id="page">
				  <div class="col-auto">
				    <label for="kind" class="visually-hidden">Kind</label>
				    <select class="form-select" name="kind" id="kind" aria-label="Default select example">
					  <option value="title" ${pager.kind eq 'title'? 'selected':''}>Title</option>
					  <option value="contents" ${pager.kind eq 'contents' ?'selected':''}>Contents</option>
					  <option value="writer" ${pager.kind eq 'writer'? 'selected':''}>Writer</option>
					</select>
				  </div>
				  <div class="col-auto">
				    <label for="search" class="visually-hidden">Search</label>
				    <input type="text" class="form-control" value="${pager.search}" name="search" id="search" placeholder="검색어를 입력하세요">
				  </div>
				  <div class="col-auto">
				    <button type="submit" class="btn btn-primary mb-3">검색</button>
					<a class="btn btn-primary mb-3" href="./add">글 등록</a>
					<a class="btn btn-primary mb-3" href="/">홈</a>
				  </div>
				</form>
			</div>
			
			
			
		</div>
	</div>
	
	</header>
	<c:import url="../template/bottom.jsp"></c:import>
	<c:import url="../template/common_js.jsp"></c:import>
	<script src="../resources/js/listTop.js"></script>		
	<script src="../resources/js/pageing.js"></script>
	<script src="../resources/css/style.css"></script>
</body>
</html>