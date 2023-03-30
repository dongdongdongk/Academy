<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search payment methods</title>
    <c:import url="../../template/common_css.jsp"></c:import>
</head>
<body>
    <c:import url="../../template/header.jsp"></c:import>
    <div class="container-fluid page-content">
        <div class="row justify-content-center">
            <div class="col-md-7 my-5">
                <h1 class="text-center">Query payment methods</h1>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <table border="1" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Payment method name</th>
                                    <th>About</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="paymentMethod" items="${paymentMethods}">
                                    <tr>
                                        <td>${paymentMethod.paymentMethod}</td>
                                        <td>${paymentMethod.info}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
	                <div class="row justify-content-center my-3">
		                <div class="col-md-5 d-flex justify-content-between">
							<a href="./paymentmethodadd" class="btn btn-outline-secondary">결제수단 추가</a>
							<a href="../memberPage" class="btn btn-outline-secondary">돌아가기</a>
						</div>
					</div>
                </div>
            </div>
        </div>
    </div>
    <c:import url="../../template/common_js.jsp"></c:import>
</body>
</html>