<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
       <title>Perfil de Vendedor - GraphicMarket</title>
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
                    <div class="text-center">
                        <img src="" alt="Foto del vendedor" class="img-fluid">
                    </div>
                </div>
                <div class="col-md-8 vendedor-info">
                    <h2 >Nombre ${seller.name} y Apellido ${seller.lastName}</h2>
                    <p><strong>Email:</strong> ${seller.email} Vendedor@gmail.com</p>
                    <p><strong>Sobre mí:</strong> ${seller.aboutMe} Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nihil voluptate perferendis numquam officiis necessitatibus error? Inventore aspernatur fugiat dignissimos magnam? Amet quam doloremque quod illum sint at facilis impedit! Aperiam.</p>
                    <div class="d-flex flex-row-reverse">
                        <a type="button" class="btn btn-outline-dark m-5 rounded-5" href="editarPerfil.jsp">Editar Perfil</a>
                    </div>
                </div>
            </div>
        </div>
        <h3 class="m-3 ml-4 text-center">Mis Productos</h3>
        <div class="bg-light mx-5 rounded-4">
            <div class="row">
                <div class="col">
                    <div class="bg-secondary py-5 m-2 text-white text-center rounded-5">1</div>
                </div>
                <div class="col">
                    <div class="bg-secondary py-5 m-2 text-white text-center rounded-5">2</div>
                </div>
                <div class="col">
                    <div class="bg-secondary py-5 m-2 text-white text-center rounded-5">3</div>
                </div>
                <div class="col">
                    <div class="bg-secondary py-5 m-2 text-white text-center rounded-5">4</div>
                </div>
                <div class="col">
                    <div class="bg-secondary py-5 m-2 text-white text-center rounded-5">5</div>
                </div>
            </div>
        </div>
        <div class="d-flex flex-row-reverse">
            <a type="button" class="btn btn-outline-dark m-5 rounded-5 " href="/product/new">Crear nuevo producto</a>
        </div>
    </div>
</body>
</html>
