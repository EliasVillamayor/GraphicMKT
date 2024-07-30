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
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #9c27b0;">
  	  <div class="container-fluid d-flex flex-column">
  			
  			 <div class="d-flex flex-lg-row d-flex justify-content-around align-items-center">
  				 <a class="navbar-brand d-flex align-items-center" href="/main">
                <img alt="Logo" src="../icons/logo3.png" class="d-inline-block align-text-top m-2" style="height: 5rem;">
                <span class="fs-2 ms-2 display-1 m-2">GraphicMarket</span></a>
    		</div>
  				
    		
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
        	  <!-- Iconos en fila centrados -->
        <div class="d-flex justify-content-between mx-5">
            <a class="text-light mx-5 fs-5 text-decoration-none display-3" href="#"><img alt="icono dado" src="../icons/dado.png" style="height: 2rem;"></a>
        	<c:if test="${sellerInSession != null}">
        		 <a class="text-light mx-5 fs-5  text-decoration-none display-3" href="/seller">Perfil </a>
        	</c:if>
        	  <a class="text-light mx-5 fs-5  text-decoration-none  display-3" href="/finalizarCompra">Carrito </a>
        </div>

      </div>
	</nav>
<div class=" container-fluid p-3 bg-secondary-subtle text-secondary-emphasis "  style="width: 100%; height: 850px;">
	<div class="row text-center" >
		<p class="fs-1  font-monospace">Productos Elegidos</p>
				

			<c:forEach items="${kart.products}" var="product">
			<div class="col-md-2 mb-3 ">

                   <div class="card" style="width: 18rem;">
					<img class="card-img-top"  src="../img/${product.productImage}">
					<div class="card-body">
					<p class="fs-5  font-monospace"> Precio:$${product.price}</p>
					 <a class="btn" style="background-color: #9c27b0;" href="/kart/delete/${product.id}">Quitar producto</a>
					</div>
                  </div>
                 </div>
			</c:forEach>

	<div class="row w-100 h-1 border-bottom border-gray-500 d-flex justify-content-between mt-2" >
		<h2>Total:</h2>
		<h3>${kart.total}</h3>
		
	</div>
   </div>
   <div class="text-center "><a href="/confirmarCompra" class="btn col-3"  style="background-color: #9c27b0;" >Confirmar Compra</a></div>
	
</div>






<!-- footer -->
<footer class=" container-fluid text-center text-lg-start btn text-muted" style="background-color: #9c27b0;">
  <section >
    <div class="container text-center text-md-start mt-5">
      <div class="row">
       <img alt="Logo" src="../icons/logo3.png" class="d-inline-block align-text-top col-md-2" style="height: 10rem;">
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4 text-light">
        <h6 class="text-uppercase fw-bold mb-4"><i class="fas fa-gem me-3"></i>Pagina</h6>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
        </div>
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4 text-light">
          <h6 class="text-uppercase fw-bold mb-4">Productos</h6>
          <p><a href="#!" class="text-reset text-decoration-none">Logos</a></p>
          <p><a href="#!" class="text-reset text-decoration-none">Iconos</a></p>
          <p><a href="#!" class="text-reset text-decoration-none">Vectores</a></p>
        </div>
        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4 text-light">
          <h6 class="text-uppercase fw-bold mb-4">Links</h6>
          <p><a href="#!" class="text-reset text-decoration-none">Precios</a></p>
          <p><a href="#!" class="text-reset text-decoration-none"> </a></p>
          <p><a href="#!" class="text-reset text-decoration-none"></a></p>
          <p><a href="#!" class="text-reset text-decoration-none">Ayuda</a></p>
        </div>
        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4 text-light">
          <h6 class="text-uppercase fw-bold mb-4">contacto</h6>
          <p><i class="fas fa-home me-3"></i> Argentina, Bs As </p>
          <p> <i class="fas fa-envelope me-3"></i> graphicMarket@example.com </p>
          <p><i class=" me-3"></i>@GraphicMarket</p>
          <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
        </div>
      </div>
   </div>
  </section>
  <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">© 2024 GraphicMarket<a class="text-reset fw-bold" href="https://mdbootstrap.com/">Coding Dojo</a>
  </div>
</footer>
</body>
</html>