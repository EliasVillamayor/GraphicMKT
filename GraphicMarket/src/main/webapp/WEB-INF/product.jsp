<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar d-flex justify-content-around" style="background-color:#9c27b0; height:5rem;">		
  			<div>
  				<img alt="carritoLogo" src="#">
    			<a class="navbar-brand" href="#"><h1>GraphicMarket</h1></a>
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

	<div class="container">
		<div>
			<img src="/img/${product.productImage}">
		</div>
		<h2>${product.seller.name}</h2>
		<h2>${product.category.name}</h2>
		<h2>${product.price}</h2>
	</div>

</body>
</html>