<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Product Info</h3>
<p><font color="green">${msg}</font></p>
<form:form action="product" modelAttribute="p" method="POST">
<table>
<tr>
<td>Name :</td>
<td><form:input path="name"/>
</tr>
<tr>
<td>Price :</td>
<td><form:input path="price"/>
</tr>
<tr>
<td>Quantity :</td>
<td><form:input path="quantity"/>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Save"/>
</tr>
</table>
</form:form>

<a href="/products">View Products</a>
</body>
</html>