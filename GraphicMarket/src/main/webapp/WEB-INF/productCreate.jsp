<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
          </div>
      </div>
  </div>
 <div  class="p-3 mb-2 bg-secondary-subtle text-secondary-emphasis" style="width: 100%; height: 800px;">
            <h1 class="mb-4">Nuevo Producto</h1>
            
            <form action="/product/new/fill" method="post" enctype="multipart/form-data" class="row">
                <!--imagen -->
                <div class="col-md-4 d-flex justify-content-center align-items-center mb-3 m-2">
                    <div class="text-center">
                        <label for="file" class="form-label d-block mb-2">Imagen:</label>
                        <input type="file" id="file" name="file" accept="image/*" class="form-control" required>
                    </div>
                </div>

                <!--  las categor�as-->
                <div class="col-md-4 d-flex flex-column justify-content-center">
                    <div class="mb-3">
                        <label for="category" class="form-label d-block mb-2">Categor�as:</label>
                        <select id="category" name="category" class="form-select">
                            <c:forEach items="${categories}" var="category">
                                <option value="${category.id}">${category.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                    
                    <!--  Boton -->
                        <input type="submit" value="Ir a asignar precio" class="btn btn-primary">
                </div>
            </form>
    </div>
</body>
</html>