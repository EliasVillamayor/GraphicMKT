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
                <div class="col-md-8 vendedor-info">
                   <div class="mb-3">
                <label for="nombre" class="form-label">Nombre:</label>
                <input type="text" class="form-control" id="nombre" name="nombre" value="${seller.name}">
            </div>
            <div class="mb-3">
                <label for="apellido" class="form-label">Apellido:</label>
                <input type="text" class="form-control" id="apellido" name="apellido" value="${seller.lastName}">
            </div>
                   <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control" id="email" name="email" value="${seller.email}">
            </div>
                   <div class="mb-3">
                <label for="aboutMe" class="form-label">Sobre mí:</label>
                <textarea class="form-control" id="aboutMe" name="aboutMe">${seller.aboutMe}</textarea>
            </div>
                    <div class="d-flex flex-row-reverse">
                        <a type="button" class="btn btn-outline-dark m-5" href="editarPerfil.jsp">Guardar cambios</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
