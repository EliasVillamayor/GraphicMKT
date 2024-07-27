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
    
        <!-- Nombre, barra de búsqueda, sesión y registro -->
        <div class="d-flex flex-lg-row d-flex justify-content-around align-items-center">
            <!-- Logo y Título -->
            <a class="navbar-brand d-flex align-items-center" href="/main">
                <img alt="carritoLogo" src="../icons/carrito.png" class="d-inline-block align-text-top m-2" style="height: 2rem;">
                <span class="fs-2 ms-2 display-1 m-2">GraphicMarket</span>
            </a>
            
            <!-- Sesión y registro -->
            <c:if test="${sellerInSession == null}">
                <ul class="navbar-nav d-flex flex-row">
                    <li class="nav-item mx-3">
                        <a class="nav-link text-light" href="/">Iniciar Sesión</a>
                    </li>
                    <li class="nav-item mx-3">
                        <a class="nav-link text-light" href="/">Registrarse</a>
                    </li>
                </ul>
            </c:if>
        </div>
        
        <!-- Iconos  -->
        <div class="d-flex justify-content-between mx-5">
            <a class="text-light mx-5 fs-5 text-decoration-none display-3" href="#"><img alt="icono dado" src="#" style="height: 2rem;"></a>
            <c:if test="${sellerInSession != null}">
                <a class="text-light mx-5 fs-5  text-decoration-none display-3" href="/seller">Perfil </a>
            </c:if>
            <a class="text-light mx-5 fs-5  text-decoration-none  display-3" href="/finalizarCompra">Carrito </a>
        </div>
    </div>
</nav>
    <div class="p-3 mb-2 bg-secondary-subtle text-secondary-emphasis" style="width: 100%; height: 800px;">
        <div class="container mt-4">
            <div class="row">
                <div class="col-md-4">
                    <div class="text-center">
                        <img src="../img/${sellerInSession.profilePicture}" alt="Foto del vendedor" class="img-fluid">
                        <a type="button" class="btn btn-outline-dark m-5 rounded-5" href="/changePFP">Cambiar foto de perfil!</a>
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
        <h3 class="m-3 ml-4 text-center">Mis Productos</h3>
        <div class="bg-light mx-5 rounded-4">
            <div class="container">
            	
            	<c:forEach items="${sellerProducts}" var="product">
            	    <div class="col">
                	    <div class="bg-secondary py-5 m-2 text-white text-center rounded-5">
                	    	<img src="../img/${product.productImage}">
                	    	<h3>Precio: ${product.price}</h3>
                	    	<h3>Categoria: ${product.category.name}</h3>
                	    	<a href="/product/${product.id}/edit" class="btn btn-danger">Cambiar Precio</a>
                	    </div>
                	</div>
               </c:forEach>
            </div>
        </div>
        <div class="d-flex flex-row-reverse">
            <a type="button" class="btn btn-outline-dark m-5 rounded-5 " href="/product/new">Crear nuevo producto</a>
        </div>
    </div>
</body>
</html>
