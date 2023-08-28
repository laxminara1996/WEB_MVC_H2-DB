<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="/">+ Add New Product</a>
<table border="1">
<thead>
<th>s.no</th>
<td>Name</td>
<td>Price</td>
<td>Quantity</td>
</thead>

<tbody>
<c:forEach items="${products}" var="product" varStatus="index">
<tr>
<td>${index.count}</td>
<td>${product.name}</td>
<td>${product.price}</td>
<td>${product.quantity}</td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>