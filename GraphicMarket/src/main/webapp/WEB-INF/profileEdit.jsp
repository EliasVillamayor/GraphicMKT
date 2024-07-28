<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
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

    <div class="p-3 mb-2 bg-secondary-subtle text-secondary-emphasis" style="width: 100%; height: 800px;">

        <div class="container mt-4">

            <div class="row">
	
               
                <div class="col-md-8 vendedor-info">
`					<form:form action="/seller/update" method="post" modelAttribute="seller" >
				             <div class="mb-3">
				             	<form:label path="name">Nombre:</form:label>
								<form:input path="name" class="form-control" value="${seller.name}"/>
								
				             </div>
	
				            <div class="mb-3">
				            	<form:label path="lastName">Apellido:</form:label>
								<form:input path="lastName" class="form-control" value="${seller.lastName}"/>
								
				            </div>
	
				            <div class="mb-3">
				            	<form:label path="email">Email:</form:label>
								<form:input type="email" path="email" class="form-control" value="${seller.email}"/>
								
				            </div>
	
				            <div class="mb-3">
				            	<form:label path="aboutMe">Sobre mí:</form:label>
								<form:input path="aboutMe" class="form-control" value="${seller.aboutMe}"/>
								
				            </div>
				            <div class="d-flex flex-row-reverse">
				            	<form:hidden path="password" value="${seller.password}"/>
				            	<form:hidden path="confirm" value="${seller.password}"/>
				            	<form:hidden path="id" value="${seller.id}"/>
				            	<form:hidden path="profilePicture" value="${seller.profilePicture}"/>
				                 <input type="hidden" value="put" name="_method" >
				                 <input type="submit" class="btn btn-outline-dark m-5" value="Guardar cambios" >
				            </div>
				            
					     </form:form>
              </div>  	
           </div>
        </div>
    </div>
</body>
</html>