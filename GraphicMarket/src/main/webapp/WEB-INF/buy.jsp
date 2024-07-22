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
	<div class="row w-100 h-1 border-bottom border-gray-500 d-flex justify-content-between" >
		<div class="col">
			<h2>Productos</h2>
			
			<!-- <c:foreach items="${kartProducts}" var="product"> -->
			<!-- <h3>${product.name}</h3> -->
			<!-- </c:foreach> -->
		</div>
		
		<div class="col">
			<h2>Precio</h2>
			<!-- <c:foreach items="${kartProducts}" var="product"  Suponiendo en sesion un objeto kartProducts-->
			<!-- <h3>${product.price}</h3> -->
			<!-- </c:foreach> -->
		</div>
		
	</div>
	<div class="row d-flex justify-content-between">
		<div class="col">
			<h2>Total:</h2>
		</div>
		<div class="col">
			<!-- Encontrar forma de sumar el total del carrito -->
			<!-- Solucion posible -> kartProducts.total y que ya este guardado en sesion -->
		</div>
	</div>
</main>


<!-- -------------------------- -->
<!-- Espacio reservado para el footer -->
<!-- -------------------------- -->

</body>
</html>