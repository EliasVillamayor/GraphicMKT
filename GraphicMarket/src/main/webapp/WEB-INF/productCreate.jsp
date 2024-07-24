<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>Nuevo Producto!!!</h1>
	
	<form action="/product/new/fill" method="post" type="multipart/form-data">
		<input type="file" name="file" accept="image/*" required>
		
		<br/>
		
			
		<label>Categorias</label>
		<select name="category">
			<c:forEach items="${categories}" var="category" multiple>
				<option value="${category.id}">${category.name}</option>
			</c:forEach>
		</select>
		
		<input type="submit" value="Ir a asignar precio">
	</form>
	
	
</div>
</body>
</html>