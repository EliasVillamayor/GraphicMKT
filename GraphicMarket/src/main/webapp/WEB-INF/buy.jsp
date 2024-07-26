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
<nav class="navbar d-flex justify-content-around" style="background-color:#9c27b0; height:5rem;">
  			
  			<div>
  				<img alt="carritoLogo" src="#">
    			<a class="navbar-brand" href="/main"><h1>GraphicMarket</h1></a>
    		</div>
  				
    		<a class=""  href="#"><img alt="icono dado" src="#"></a>
    		
    		<c:if test="${sellerInSession == null}">
    			<ul class=" d-flex justify-content-between">
        			<li class="nav-item m-2" style="list-style:none;">
         				<a class="nav-link active" aria-current="page" href="/">Iniciar Sesion</a>
       				</li> 
        			<li class="nav-item m-2" style="list-style:none;">
          				<a class="nav-link active" aria-current="page" href="/">Registrarse</a>
        			</li>    
        		</ul>
        	</c:if>
        	<c:if test="${sellerInSession != null}">
        		<a href="/seller">
        			<img alt="perfil" src="">
        		</a>
        		
        	</c:if>
        	
        	<a href="/finalizarCompra"><img alt="carrito" src=""></a>
      		
    		

	</nav>

<main>

	<table>
		<thead>
			<tr>
				<th>Productos</th>
				<th>Precio</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${kart.products}" var="product">
				<tr>
					<td>${product.seller.name}</td>
					<td>${product.price} <a class="btn btn-danger btn-sm" style="border-radius:50%;" href="/ruta/borrar/producto/carrito"></a></td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="row w-100 h-1 border-bottom border-gray-500 d-flex justify-content-between" >
		<h2>Total:</h2>
		<h3>${kart.total}</h3>
	</div>
	
	<a href="/confirmarCompra" ></a>
</main>


<!-- -------------------------- -->
<!-- Espacio reservado para el footer -->
<!-- -------------------------- -->

</body>
</html>