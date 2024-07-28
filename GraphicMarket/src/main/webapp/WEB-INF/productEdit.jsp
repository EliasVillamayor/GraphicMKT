<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
            <a class="text-light mx-5 fs-5 text-decoration-none display-3" href="#"><img alt="icono dado" src="#" style="height: 2rem;"></a>
            <c:if test="${sellerInSession != null}">
                <a class="text-light mx-5 fs-5  text-decoration-none display-3" href="/seller">Perfil </a>
            </c:if>
            <a class="text-light mx-5 fs-5  text-decoration-none  display-3" href="/finalizarCompra">Carrito </a>
        </div>
    </div>
</nav>

	<h1>Cambiar precio!</h1>
	
	<form:form action="/product/update" method="post" modelAttribute="product">
		<input type="hidden" name="_method" value="put">
		
		<form:hidden path="id" value="${product.id}"/>
		<form:hidden path="productImage" value="${product.productImage}"/>
		
		<div>
			<form:label path="price">Precio:</form:label>
			<form:input path="price" class="form-control" value="${product.price}"/>
			<form:errors path="price" class="text-danger"/>
		</div>
		
	
		
		<input type="submit" class="btn btn-success mt-3" value="Edit">
	</form:form>

</body>
</html>