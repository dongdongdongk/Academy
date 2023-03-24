<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Member's Payment Method</title>
</head>
<body>
    <h1>Add Member's Payment Method</h1>
	<form:form action="./paymentmethodadd" method="post" modelAttribute="paymentMethods">
    	<input type="hidden" name="memberId" value="${member.id}" />
	        <table>
	            <tr>
	                <td>Payment Method:</td>
	                <td><form:input path="paymentMethod" /></td>
	            </tr>
	            <tr>
	                <td>Info:</td>
	                <td><form:textarea path="info" /></td>
	            </tr>
	        </table>
        <input type="submit" value="Add Payment Method" />
    </form:form>
</body>
</html>