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
     <nav class="navbar navbar-light bg-light justify-content-center p-1 ">
          <a class="navbar-brand m-1 fs-1  " href="#">
          <img src="#" width="50" height="50" class="d-inline-block align-top m-2" alt="">GraphicMarket</a>
      </nav>
   <div class="p-3 mb-2 bg-secondary-subtle text-secondary-emphasis " style="width: 100%; height: 800px;"  >
      <div>
          <h1 class="text-black  text-center mb-0 p-4 fs-3 m-2 text-uppercase ">¡Los mas Elegidos!</h1>
      </div>
     <div id="carousel" class="carousel slide bg-light mx-5 mb-5 " data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <div class="row">
        <div class="col">
          <div class="bg-secondary py-5 m-2 text-white text-center">1</div>
        </div>
        <div class="col">
          <div class="bg-secondary py-5 m-2 text-white text-center">2</div>
        </div>
        <div class="col">
          <div class="bg-secondary py-5 m-2 text-white text-center">3</div>
        </div>
        <div class="col">
          <div class="bg-secondary py-5 m-2 text-white text-center">4</div>
        </div>
        <div class="col">
          <div class="bg-secondary py-5 m-2 text-white text-center">5</div>
        </div>
      </div>
    </div>
    <div class="carousel-item">
      <div class="row">
        <div class="col">
          <div class="bg-secondary py-5 m-2 text-white text-center">6</div>
        </div>
        <div class="col">
          <div class="bg-secondary py-5 m-2 text-white text-center">7</div>
        </div>
        <div class="col">
          <div class="bg-secondary py-5 m-2 text-white text-center">8</div>
        </div>
        <div class="col">
          <div class="bg-secondary py-5 m-2 text-white text-center">9</div>
        </div>
        <div class="col">
          <div class="bg-secondary py-5 m-2 text-white text-center">10</div>
        </div>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only"></span>
  </a>
  <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only"></span>
  </a>
  </div>
  <main class="container bg-light rounded-5 " style="width: 80%; height: 450px;"  >
   <h3 class="text-center p-3">¡El mas popular!</h3>
      <div class="container text-center">
  <div class="row justify-content-start">
         <div class="col-4">
             <img src="#"  class="object-fit-cover border rounded" alt="Imagen">
         </div>
         <div class="col-4">
             <p class="fs-5 fw-semibold">Formato:</p>
             <p class="fs-5 fw-semibold">Tamaño:</p>
         </div> 
      </div>
    </div>   
  </main>
</div>
</body>
</html>