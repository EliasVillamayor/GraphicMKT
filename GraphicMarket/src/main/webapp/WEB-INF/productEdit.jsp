<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Cambiar precio!</h1>
	
	<form:form action="/product/update" method="post" modelAttribute="product">
		<input type="hidden" name="_method" value="put">
		<div>
			<form:label path="price">Precio:</form:label>
			<form:input path="price" class="form-control" value="${product.price}"/>
			<form:errors path="price" class="text-danger"/>
		</div>
		<input type="submit" class="btn btn-success mt-3" value="Edit">
	</form:form>

</body>
</html>