<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inicio de sesion / Registrarse</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
      <nav class="navbar navbar-light btn justify-content-center" style="background-color:#9c27b0">
       <img alt="carritoLogo" src="../icons/logo3.png" class="d-inline-block align-text-top" style="height: 5rem;">
          <span class="fs-2 ms-2 display-1  text-light">GraphicMarket</span>
      </nav>
  <div class="container-fluid bg-secondary-subtle d-flex justify-content-center text-center" style="height:900px">        
      <div class="col-4 p-4">  
         <h2 class="pt-2 pb-3 " >Iniciar sesion</h2>
           <p class="text-danger">${errorLogin}</p>
             <form action="/login" method="POST">
             	<div class="row p-2">
                 	<div>
                   		<input type="email" name="email" class="form-control m-2  rounded-5  " placeholder="Email:"/>
                 	</div>
                 	<div>
                    	 <input type="password" name="password" class="form-control m-2 rounded-5 " placeholder="Contraseï¿½a:"/>
                	 </div>
               	</div>
             	<input type="submit" class="btn m-4 rounded-5 " style="background-color:#9c27b0;"  value="Iniciar Sesion"/>
          	 </form>
        </div> 
          <div class="d-flex m-5" style="height: 550px;">
               <div class="vr"></div>
           </div>
    <div class="col-4 p-4 text-center">
         <h2 class="pt-2 pb-3 ">Registrarse</h2>
         <form:form action="/register" method="POST" modelAttribute="newUser">
             <div>
                 <form:input path="name"  class="form-control  m-3 rounded-5 " placeholder="Nombre:"/>
                 <form:errors path="name" class="text-danger"/>
             </div>
             <div>
                  <form:input path="lastName"  class="form-control m-3 rounded-5 " placeholder="Apellido:" />
                  <form:errors path="lastName" class="text-danger"/>
             </div>
             <div>
                <form:input path="email"  class="form-control m-3 rounded-5 " placeholder="Email:" />
                <form:errors path="email" class="text-danger"/>
             </div>
             <div>
                <form:password path="password" class="form-control m-3 rounded-5 " placeholder="Contraseï¿½a:" />
                <form:errors path="password" class="form-danger" />
             </div>
             <div>
               <form:password path="confirm"  class="form-control m-3  rounded-5 " placeholder="Confirmar Contraseï¿½a:"/>
               <form:errors path="confirm" class="form-danger"/>
             </div>
             <div class="form-floating m-3">
               <form:textarea path="aboutMe" class="form-control rounded-4" placeholder="Descripcion" id="floatingTextarea2" style="height: 80px; width:580px"></form:textarea>
               <form:label path="aboutMe" for="floatingTextarea2">sDescripcion:</form:label>
             </div>
             <input type ="submit" class="btn m-3 rounded-5" style="background-color:#9c27b0" value="Registrarse">
         </form:form>
        
    </div> 
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