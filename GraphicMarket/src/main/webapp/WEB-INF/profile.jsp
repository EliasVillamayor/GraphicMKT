<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Perfil de Vendedor - GraphicMarket</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
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
    <div class=" container-fluid p-3 bg-secondary-subtle text-secondary-emphasis" style="width: 100%;">
        <div class="container mt-4">
            <div class="row">
                <div class="col-md-4">
                    <div class="text-center">
                        <img src="../img/${sellerInSession.profilePicture}" alt="Foto del vendedor" class="img-fluid">
                        <a type="button" class="btn btn-outline-dark m-5 rounded-5" href="/changePFP">Cambiar foto de perfil</a>
                    </div>
                </div>
                <div class="col-md-8 vendedor-info">
                    <h2 >${sellerInSession.name} ${sellerInSession.lastName}</h2>
                    <p><strong>Email:</strong> ${sellerInSession.email}</p>
                    <p><strong>Sobre mí:</strong> ${sellerInSession.aboutMe}</p>
                    <div class="d-flex flex-row-reverse">
                        <a type="button" class="btn btn-outline-dark m-5 rounded-5" href="/seller/edit">Editar Perfil</a>
                    </div>
                </div>
            </div>
        </div>
        
        	<div class="row text-center m-3" >
        <p class="fs-1  font-monospace ">Mis Productos</p>
            	<c:forEach items="${sellerProducts}" var="product">            	
            	    <div class="col-md-2 mb-3">
            	    
            	     <div class="card" style="width: 18rem;">
                	    	<img  class="card-img-top"  src="../img/${product.productImage}">
                	    	<div class="card-body">
                	    	<p class="card-title m-2 fs-4">U$D ${product.price}</p>
                	    	<p  class="card-title m-2 fs-4">Categoria: ${product.category.name}</p>
                	    	<a href="/product/${product.id}/edit" class="btn m-1" style="background-color: #9c27b0;">Cambiar Precio</a>
                	    </div>
                	</div>
                </div>
               </c:forEach>
            </div>
        <div class="d-flex flex-row-reverse">
            <a type="button" class="btn btn-outline-dark m-5 rounded-5 " href="/product/new">Crear nuevo producto</a>
        </div>
    </div>
   <!-- footer -->
<footer class=" container-fluid text-center text-lg-start btn text-muted" style="background-color: #9c27b0;">
  <section >
    <div class="container text-center text-md-start mt-5">
      <div class="row">
       <img alt="Logo" src="../icons/logo3.png" class="d-inline-block align-text-top col-md-2" style="height: 10rem;">
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4 text-light">
        <h6 class="text-uppercase fw-bold mb-4"><i class="fas fa-gem me-3"></i>sPagina</h6>
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
          <p><a href="#!" class="text-reset text-decoration-none"> Redes</a></p>
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
