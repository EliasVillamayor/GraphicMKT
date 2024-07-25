<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <nav class="navbar navbar-light btn justify-content-center" style="background-color:#9c27b0">
        <a class="navbar-brand m-2 fs-1" href="#">GraphicMarket</a>
    </nav>
    
    <div class="p-3 mb-2 bg-secondary-subtle text-secondary-emphasis" style="width: 100%; height: 800px;">
    
        <div class="container mt-4">
        
            <div class="row">
            
                <div class="col-md-4">
                
                        <div class="mb-3">
                            <label for="fotoPerfil" class="form-label">Foto de Perfil</label>
                            <input type="file" class="form-control" id="fotoPerfil" name="fotoPerfil">
                    </div>
                </div>
                
                <form:form action="/seller/update" method="post" modelAttribute="seller" >
                	<div class="col-md-8 vendedor-info">
           
			             <div class="mb-3">
			             	<form:label path="name">Nombre:</form:label>
							<form:input path="name" class="form-control" value="${seller.name}"/>
							<form:errors path="name" class="text-danger" />
			             </div>
             
			            <div class="mb-3">
			            	<form:label path="lastName">Apellido:</form:label>
							<form:input path="lastName" class="form-control" value="${seller.lastName}"/>
							<form:errors path="lastName" class="text-danger" />
			            </div>
            
			            <div class="mb-3">
			            	<form:label path="email">Email:</form:label>
							<form:input type="email" path="email" class="form-control" value="${seller.email}"/>
							<form:errors path="email" class="text-danger" />
			            </div>
			            
			            <div class="mb-3">
			            	<form:label path="aboutMe">Sobre mí:</form:label>
							<form:input path="aboutMe" class="form-control" value="${seller.aboutMe}"/>
							<form:errors path="aboutMe" class="text-danger" />
			            </div>
			            <div class="d-flex flex-row-reverse">
			            	<form:hidden path="id" value="${seller.id}"/>
			                 <input type="hidden" value="put" name="_method" >
			                 <input type="submit" class="btn btn-outline-dark m-5" value="Guardar cambios" >
			            </div>
			            
                	</div>
                	
                </form:form>
                
           </div>
        </div>
    </div>
</body>
</html>
