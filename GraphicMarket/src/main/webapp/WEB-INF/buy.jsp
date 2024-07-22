<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GraphicMarket</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<!-- -------------------------- -->
<!-- Espacio reservado para el nav -->
<!-- -------------------------- -->

<main>

	<table>
		<thead>
			<tr>
				<th>Productos</th>
				<th>Precio</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${kartProducts}" var="product">
				<tr>
					<td>${product.name}</td>
					<td>${product.price} <a class="btn btn-danger btn-sm" style="border-radius:50%;" href="/ruta/borrar/producto/carrito"></a></td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="row w-100 h-1 border-bottom border-gray-500 d-flex justify-content-between" >
		<h2>Total:</h2>
		<h3>${kartProducts.total}</h3>
	</div>
	
	


<!-- -------------------------- -->
<!-- Espacio reservado para el footer -->
<!-- -------------------------- -->

</body>
</html>