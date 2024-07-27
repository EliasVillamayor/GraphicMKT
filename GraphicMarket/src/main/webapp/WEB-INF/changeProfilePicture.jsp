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
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #9c27b0;">
  	  <div class="container-fluid d-flex flex-column">
  			
  			 <div class="d-flex flex-lg-row d-flex justify-content-around align-items-center">
  				 <a class="navbar-brand d-flex align-items-center" href="/main">
                <img alt="carritoLogo" src="../icons/carrito.png" class="d-inline-block align-text-top m-2" style="height: 2rem;">
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
            <a class="text-light mx-5 fs-5 text-decoration-none display-3" href="#"><img alt="icono dado" src="#" style="height: 2rem;"></a>
        	<c:if test="${sellerInSession != null}">
        		 <a class="text-light mx-5 fs-5  text-decoration-none display-3" href="/seller">Perfil </a>
        	</c:if>
        	  <a class="text-light mx-5 fs-5  text-decoration-none  display-3" href="/finalizarCompra">Carrito </a>
        </div>

      </div>
	</nav>
	<div class="container-fluid bg-secondary-subtle d-flex justify-content-around align-items-center" style="height: 850px;">
        <div class="p-4 bg-light rounded shadow align-items-center">
            <form action="/changePFP" method="post" enctype="multipart/form-data">
                <div class="text-center">
                    <label class="form-label fs-3 display-2">Imagen</label>
                    <input type="file" name="file" accept="image/*" class="form-control" required>
                </div>
                <button type="submit" class="btn w-100 m-2"  style="background-color: #9c27b0;">Cambiar imagen!</button>
            </form>
        </div>
        
        <div class="m-4  d-flex flex-column">
        <img alt="Publicidad" class="m-2" src="../icons/publicidad.png" style="height: 500px; width: 400px;" >
        <img alt="Publicidad" class="m-2" src="../icons/publicidad2.png" style="height: 200px; width: 400px;" >
       </div>
        
    </div>
</body>
</html>