<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>GraphicMarket</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<!-- Primera fila del encabezado con nombre, buscador, y opciones de sesión -->
    <nav class="navbar navbar-expand-lg navbar-custom" style="background-color: #9c27b0; color: white">
        <div class="container-fluid">
            <a class="navbar-brand" href="#" style="color: white">GraphicMarket </a>
            <div class="search-container" style="width: 30%;padding: 10px">
                <input type="text" class="search-input" placeholder="Buscar..." style="width: 100%;padding: 8px;border-radius: 20px">
                <button class="search-button" style="position: absolute; background-color: #9c27b0; border: none; color: white; padding: 8px 16px;border-radius: 20px">Buscar</button>
            </div>
            <div class="ms-auto">
                <a class="nav-link" href="#" style="color: white" style="margin-right: 5px">Iniciar sesion</a>
                <a class="nav-link" href="#" style="color: white" style="margin-right: 5px">Registrarse</a>
            </div>
        </div>
    </nav>

    <!-- Segunda fila del encabezado con categorías, tendencias y ofertas -->
    <nav class="navbar navbar-expand-lg navbar-custom" style="background-color: #9c27b0; color: white">
        <div class="container-fluid">
            <ul class="navbar-nav me-auto" style="color: white">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#" style="color: white">Categorias</a>
                </li>
                <li class="nav-item"style="margin-right: 5px" >
                    <a class="nav-link" href="#" style="color: white" >Tendencias</a>
                </li>
                <li class="nav-item" style="margin-right: 5px">
                    <a class="nav-link" href="#" style="color: white" >Ofertas</a>
                </li>
            </ul>
        </div>
    </nav>
    
    
    
    
    <!-- Contenido principal -->
    <div class="container my-4" style="background-color: #ffffff; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">
    <div class="row">
        <div class="col-md-6">
            <img src="ruta/a/la/imagen.jpg" class="img-fluid" alt="Descripcion de la imagen">
            <div style="background-color: #e0e0e0; height: 300px; width: 100%; border-radius: 4px;"></div>
        </div>
        <div class="col-md-6">
            <h2 class="mb-3">${producto.titulo}</h2>
            <p class="font-weight-bold mb-1"><Strong>Autor: </strong>${producto.autor}</p>
            <p class="mb-3">${producto.descripcion}</p>
            <p class="mb-2"><strong>Precio:</strong> $${producto.precio}</p>
            <p class="mb-4"><strong>Categorias:</strong> ${producto.categorias}</p>
            <button class="btn btn-custom" style="background-color: #9c27b0; color: white;">Agregar al carrito!</button>
            <button class="btn btn" style="border: 2px solid #9c27b0; color: #9c27b0;">Contactar al vendedor</button>
         
        </div>
    </div>
</div>

    <!-- Pie de página -->
  <footer class="text-white text-center py-3" style="background-color: #9c27b0">
    <div class="container" style="background-color: #9c27b0">
        <div class="d-flex justify-content-between" style="background-color: #9c27b0">
            <div>
                <p>Redes:</p>
                <p>Ayuda al consumidor</p>
            </div>
            <div>
                <p>Contacto: info@graphicmarket.com</p>
                <p>© 2024 GraphicMarket<p>
            </div>
        </div>
    </div>
</footer>
  

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
