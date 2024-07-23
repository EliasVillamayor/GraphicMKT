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
      <nav class="navbar navbar-light bg-light justify-content-center p-4 ">
          <a class="navbar-brand m-2 fs-1  " href="#">
          <img src="#" width="50" height="50" class="d-inline-block align-top m-2" alt="">GraphicMarket</a>
      </nav>
  <div class="container-fluid bg-secondary-subtle d-flex justify-content-center text-center" style="height:900px">        
      <div class="col-4 p-4">
         <h2 class="pt-2 pb-3 " >Iniciar sesion</h2>
           <p class="text-lig">${errorLogin}</p>
             <form action="/login" method="POST">
             <div class="row p-2">
                 <div>
                   <input  type="text" class="form-control m-2" placeholder="Email:" aria-label="Email"/>
                 </div>
                 <div>
                     <input type="text" class="form-control m-2 " placeholder="Contrase�a:" aria-label="password">
                 </div>
               </div>
             	<input type="submit" class="btn btn-secondary m-4" value="Iniciar Sesion"/>
           	</form>
        </div> 
          <div class="d-flex m-5" style="height: 550px;">
               <div class="vr"></div>
           </div>
    <div class="col-4 p-4 text-center">
         <h2 class="pt-2 pb-3 ">Registrarse</h2>
         <form:form action="/register" method="POST" modelAttribute="newUser">
             <div>
                 <form:input path="firstName"  class="form-control  m-3" placeholder="Nombre:" aria-label="name"/>
                 <form:errors path="firstName" class="text-danger"/>
             </div>
             <div>
                  <form:input path="lastName"  class="form-control m-3" placeholder="Apellido:" aria-label="lastName"/>
                  <form:errors path="lastName" class="text-danger"/>
             </div>
             <div>
                <form:input path="email"  class="form-control m-3" placeholder="Email:" aria-label="email"/>
                <form:errors path="email" class="text-danger"/>
             </div>
             <div>
                <form:password path="password" class="form-control m-3" placeholder="Contrase�a:" aria-label="password"/>
                <form:errors path="password" class="form-danger" />
             </div>
             <div>
               <form:password path="confirm"  class="form-control m-3" placeholder="Confirmar Contrase�a" aria-label="password"/>
               <form:errors path="confirm" class="form-danger"/>
             </div>
             <div class="m-2">
                 <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="gridCheck">Vendedor</label>
             </div>
         </form:form>
        <input type ="submit" class="rounded btn btn-secondary m-3" value="Registrarse">
    </div> 
  </div>
</body>
</html>