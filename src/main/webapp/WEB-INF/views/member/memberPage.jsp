<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
<c:import url="../template/common_css.jsp"></c:import>
<style>
    .info-label {
        font-weight: bold;
    }
    .info-text {
        padding-bottom: 1em;
    }
    .btn-info {
        background-color: #007bff;
        color: #ffffff;
    }
    .info-divider {
        border-bottom: 1px solid #e0e0e0;
        margin-bottom: 1em;
    }
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <h1 class="col-md-7 my-5">회원정보</h1>
        </div>
        
        <div class="row justify-content-center">
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row mb-3">
                            <div class="col-md-3 info-label">이름</div>
                            <div class="col-md-9 info-text">${dto.name}</div>
                        </div>
                        <div class="info-divider"></div>
                        <div class="row mb-3">
                            <div class="col-md-3 info-label">전화번호</div>
                            <div class="col-md-9 info-text">${dto.phone}</div>
                        </div>
						<div class="info-divider"></div>
						<div class="row mb-3">
						    <div class="col-md-3 info-label">주소</div>
						    <div class="col-md-9 info-text">${dto.address}</div>
						</div>
						<div class="info-divider"></div>
						<div class="row mb-3">
						    <div class="col-md-3 info-label">상세 주소</div>
						    <div class="col-md-9 info-text">${dto.addressDetail}</div>
						</div>
                        <div class="info-divider"></div>
                        <div class="row mb-3">
                            <div class="col-md-3 info-label">이메일</div>
                            <div class="col-md-9 info-text">${dto.email}${dto.emaildomain}</div>
                        </div>
                        <div class="info-divider"></div>
						<div class="row">
						    <div class="col-md-3 info-label">등급</div>
						    <div class="col-md-9 info-text">
						        <c:choose>
						            <c:when test="${dto.roleDTO.roleName eq 'ADMIN'}">
						                관리자
						            </c:when>
						            <c:when test="${dto.roleDTO.roleName eq 'MANAGER'}">
						                매니저
						            </c:when>
						            <c:when test="${dto.roleDTO.roleName eq 'MEMBER'}">
						                일반 회원
						            </c:when>
						        </c:choose>
						    </div>
						</div>
                    </div>
                </div>
                <div class="d-flex justify-content-center mt-3">
                    <a href="./memberUpdate" class="btn btn-info">회원정보 수정</a>
                </div>
            </div>
        </div>
    </div>

<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>