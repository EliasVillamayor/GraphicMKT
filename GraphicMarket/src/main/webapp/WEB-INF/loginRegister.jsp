<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
      <nav class="navbar navbar-light btn justify-content-center" style="background-color:#9c27b0">
          <a class="navbar-brand m-2 fs-1  " href="#">GraphicMarket</a>
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
                    	 <input type="password" name="password" class="form-control m-2 rounded-5 " placeholder="Contrase�a:"/>
                	 </div>
               	</div>
             	<input type="submit" class="btn m-4 rounded-5 " style="background-color:#9c27b0"  value="Iniciar Sesion"/>
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
                <form:password path="password" class="form-control m-3 rounded-5 " placeholder="Contrase�a:" />
                <form:errors path="password" class="form-danger" />
             </div>
             <div>
               <form:password path="confirm"  class="form-control m-3  rounded-5 " placeholder="Confirmar Contrase�a:"/>
               <form:errors path="confirm" class="form-danger"/>
             </div>
             <div class="form-floating m-3">
               <form:textarea path="aboutMe" class="form-control rounded-4" placeholder="Descripcion" id="floatingTextarea2" style="height: 80px; width:580px"></form:textarea>
               <form:label path="aboutMe" for="floatingTextarea2">Descripcion:</form:label>
             </div>
             <input type ="submit" class="btn m-3 rounded-5" style="background-color:#9c27b0" value="Registrarse">
         </form:form>
        
    </div> 
  </div>
</body>
</html>