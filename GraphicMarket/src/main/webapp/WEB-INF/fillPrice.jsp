<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action="/product/create" method="post" modelAttribute="product">
		<form:label path="price">precio:</form:label>
		<form:input path="price" class="form-control" />
		<form:errors path="price" class="text-danger"/>
		
		<input type="submit" class="btn btn-success mt-3" value="Registrar Producto">
	</form:form>
</body>
</html>