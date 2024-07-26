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
    <nav class="navbar navbar-expand-lg navbar-custom btn" style="background-color:#9c27b0">
      <a class="navbar-brand" href="#">
        <img src="path/to/icon.png" width="30" height="30" alt="">
      </a>
      <a class="navbar-brand m-1 fs-1 text-white " href="#">GraphicMarket</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
          <form class="form-inline mx-auto my-2 my-lg-0">
              <input class="form-control" type="search" placeholder="Search" aria-label="Search">
          </form>
          <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                  <a class="nav-link text-white" href="#">Iniciar sesión</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link text-white" href="#">Registrarse</a>
              </li>
          </ul>
      </div>
  </nav>
  <div class="container-fluid custom-row btn" style="background-color:#9c27b0" >
      <div class="row">
          <div class="col text-center">
              <nav class="nav d-flex justify-content-around">
                  <a class="nav-link text-white" href="#">Categorias</a>
                  <a class="nav-link  text-white" href="#">Tendencias</a>
                  <a class="nav-link  text-white" href="#">Ofertas</a>
                  <div class="col-auto">
                    <img src="path/to/icon.png" alt="Icon" class="custom-icon">
                </div>
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