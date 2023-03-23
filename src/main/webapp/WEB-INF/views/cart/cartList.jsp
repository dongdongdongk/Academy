<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cart</title>
</head>
<body>
    <h1>Cart</h1>
    <table>
        <tr>
            <th>번호</th>
            <th>상품이름</th>
            <th>상품번호</th>
        </tr>
        <tr>
            <td>${list.cartNum}</td>
            <td></td>
            <td></td>
            <td>
               <button type="submit">Remove</button>
            </td>
        </tr>
    </table>
    
</body>
</html>
