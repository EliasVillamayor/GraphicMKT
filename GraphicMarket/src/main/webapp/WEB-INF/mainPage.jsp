<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar d-flex justify-content-around" style="background-color:#9c27b0; height:5rem;">
  			
  			<div class="row">
  				<img alt="carritoLogo" src="../icons/carrito.png" style="height:50px; width:50px;">
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
	
	<c:forEach items="${kart.products}" var="product">
		<p>${product}</p>
	</c:forEach>
 	 
  	<div class="container-fluid m-5 bg-secondary-subtle">
  		<c:forEach items="${todosProductos}" var="product">
  			<div class="row border-bottom border-top border-black" style="height:400px;">
  				<div class="col">
  					<img class="p-5 img-fluid" src="/img/${product.productImage}" style="max-heigth:380px;">
  				</div>
  				<div class="col">
  					<h2 class"p-3">Precio: ${product.price}</h2>
  					<h2 class"p-3">Autor: ${product.seller.name}</h2>
  					<h2 class"p-3">Categoria: ${product.category.name}</h2>
  					
  					<form action="/agregarAlCarrito" method="post">
  						<input type="hidden" value="${product.id}" name="productID">
  						<input type="submit" value="Agregar al carrito" class="btn btn-danger">
  					</form>
  					
  					<a href="/product/${product.id}" class="btn btn-danger">Ver Producto</a>
  				</div>
  				
  			</div>
  		</c:forEach>
  	</div>
   
</body>
</html>