<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<c:import url="../template/common_css.jsp"></c:import>
<style>
    .single-btn {
        display: flex;
        justify-content: center;
    }
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
            <h1 class="col-md-7 my-5">회원정보 수정</h1>
        </div>
        
        <div class="row justify-content-center">
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <form action="./memberUpdate" method="post">
                            <div class="mb-3">
                                <label for="name" class="form-label fw-bold">이름</label> 
                                <input type="text" name="name" class="form-control" id="name" value="${dto.name}">
                            </div>
                        
                            <div class="mb-3">
                                <label for="phone" class="form-label fw-bold">전화번호</label> 
                                <input type="tel" name="phone" class="form-control" id="phone" value="${dto.phone}">
                            </div>
                            
                            <div class="mb-3">
                                <label for="pw" class="form-label fw-bold">비밀번호</label> 
                                <input type="password" name="pw" class="form-control" id="pw" value="${dto.pw}">
                            </div>
                            
                            <div class="mb-3">
                                <label for="email" class="form-label fw-bold">이메일</label>
                                <div class="input-group">
                                    <input type="text" class="form-control" name="email" id="email" value="${dto.email}">
                                    <select class="form-control" name="emaildomain" id="emaildomain">
                                        <option value="@naver.com" ${dto.emaildomain == '@naver.com' ? 'selected' : ''}>@naver.com</option>
                                        <option value="@daum.net" ${dto.emaildomain == '@daum.net' ? 'selected' : ''}>@daum.net</option>
                                        <option value="@gmail.com" ${dto.emaildomain == '@gmail.com' ? 'selected' : ''}>@gmail.com</option>
                                        <option value="@hanmail.com" ${dto.emaildomain == '@hanmail.com' ? 'selected' : ''}>@hanmail.com</option>
                                        <option value="@yahoo.co.kr" ${dto.emaildomain == '@yahoo.co.kr' ? 'selected' : ''}>@yahoo.co.kr</option>
                                    </select>
                                </div>
                            </div>
                            
						    <div class="mb-3 single-btn">
						        <button class="btn btn-info" type="submit">확인</button> 
						    </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>