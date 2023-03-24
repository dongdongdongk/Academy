<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Search payment methods</title>
</head>
<body>
<h1>Query payment methods</h1>
    <table border="1">
        <tr>
            <th>Payment method name</th>
            <th>About</th>
        </tr>
        <c:forEach var="paymentMethod" items="${paymentMethods}">
            <tr>
                <td>${paymentMethod.paymentMethod}</td>
                <td>${paymentMethod.info}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>