<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관 확인</title>
<c:import url="../template/common_css.jsp"></c:import>
<style>
    .terms-container {
        margin-top: 2rem;
        padding: 2rem;
        border: 1px solid #e0e0e0;
        border-radius: 8px;
    }
    .terms-title {
        font-size: 1.5rem;
        font-weight: bold;
        margin-bottom: 1rem;
    }
    .form-check {
        margin-bottom: 1rem;
    }
    .agree-btn {
        display: flex;
        justify-content: center;
    }
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container-fluid page-content">
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="terms-container">
                <div class="terms-title">약관 확인</div>
                <div class="form-check">
                    <input class="form-check-input checks" type="checkbox" value="" id="checkAll">
                    <label class="form-check-label" for="checkAll">
                        전체동의
                    </label>
                </div>
                
				<!-- 이용약관 -->
				<div class="card mb-4">
				    <div class="card-header">
				        <input class="form-check-input checks ml-1" type="checkbox" value="" id="check1">
				        <label class="form-check-label ml-2" for="check1">
				            이용약관 동의 (필수)
				        </label>
				    </div>
				    <div class="card-body">
				        <div class="terms-content">
					        제 1 조 (목적)<br>
					        본 약관은 회사가 제공하는 서비스의 이용과 관련하여 회사와 회원간의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.<br>
							<br>
					        제 2 조 (정의)<br>
					        본 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br>
					        1. "서비스"라 함은 회사가 제공하는 모든 서비스를 의미합니다.<br>
					        2. "회원"이라 함은 회사와 서비스 이용계약을 체결한 자를 의미합니다.<br>
					        ...<br>
				        </div>
				    </div>
				</div>

				<!-- 개인정보 처리방침 -->
				<div class="card mb-4">
				    <div class="card-header">
				        <input class="form-check-input checks ml-1" type="checkbox" value="" id="check2">
				        <label class="form-check-label ml-2" for="check2">
				            개인정보 처리방침 동의 (필수)
				        </label>
				    </div>
				    <div class="card-body">
				        <div class="terms-content">
					        회사는 회원의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 개인정보 처리방침을 수립합니다.<br>
					        <br>
					        1. 개인정보의 수집 및 이용 목적<br>
					        2. 수집하는 개인정보의 항목<br>
					        3. 개인정보의 보유 및 이용 기간<br>
					        ...<br>
				        </div>
				    </div>
				</div>

				<!-- 위치정보 이용약관 -->
				<div class="card mb-4">
				    <div class="card-header">
				        <input class="form-check-input checks ml-1" type="checkbox" value="" id="check3">
				        <label class="form-check-label ml-2" for="check3">
				            위치정보 이용약관 동의 (필수)
				        </label>
				    </div>
				    <div class="card-body">
				        <div class="terms-content">
					        본 약관은 회사가 제공하는 위치기반 서비스에 대한 이용과 관련하여 회사와 회원간의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.<br>
					        <br>
					        1. 위치정보 수집 방법<br>
					        2. 위치정보 이용 목적<br>
					        3. 위치정보의 보유 및 이용 기간<br>
					        ...<br>
				        </div>
				    </div>
				</div>

                <div class="agree-btn">
                    <button id="agree" class="btn btn-outline-secondary">회원가입</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="../resources/js/memberAgree.js"></script>
<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>