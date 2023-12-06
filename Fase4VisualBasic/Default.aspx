<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="Fase4VisualBasic._Default" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="css-scss/base.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Contenido didáctico UNAD</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>   
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="contenido/registro/FormularioRegistro.aspx">Registrarse</a>
                    </li>                   
                </ul>
            </div>
        </div>
    </nav>

    <!-- Banner -->
    <div class="container-fluid p-0 bg-banner">
        <img src="assents/img/logo_unad.png" alt="Banner Image" class="banner-image">
    </div>

    <!-- Introducción -->
    <div class="container mt-4">
        <div class="row">
            <div class="col">
                <div>
                    <h2>Bienvenido a la Plataforma Educativa UNAD</h2>
                    <br>
                    <p>Explora y aprende en nuestra plataforma educativa dinámica diseñada por el grupo 405021_18 de la Universidad Nacional Abierta y a Distancia!</p>
                    <p>Nuestro objetivo es ofrecerte contenido didáctico vibrante y emocionante, repleto de información multimedia diversa, incluyendo vídeos, imágenes, sonidos y textos en PDF, todo diseñado para facilitar tu aprendizaje.</p>
                    <p>Únete a nosotros en esta experiencia educativa y conoce a los brillantes integrantes del grupo que hicieron esto posible:</p>
                    <ul>
                        <li><b>Diego Alexander Leon Torres</b></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <!-- Temas -->
    <div class="container mt-4">
        <div class="row">
            <!-- Tema 1: Metadatos -->
            <div class="col-md-4">
                <div class="tema-container d-flex flex-column align-items-stretch">
                    <img src="assents/img/metadatos/metadato_img.png" alt="Imagen Metadatos" class="tema-image">
                    <div class="tema-description">
                        <h3>Metadatos</h3>
                        <p>Sumérgete en el mundo de la organización y gestión de datos, aprende sobre la importancia de la información descriptiva y su estructuración para optimizar el acceso y la búsqueda eficientes de datos.</p>
                    </div>
                    <a href="contenido/metadatos/Base.aspx" class="btn-tema">Conoce más</a>
                </div>
            </div>

            <!-- Tema 2: Tensor Flow -->
            <div class="col-md-4">
                <div class="tema-container d-flex flex-column align-items-stretch">
                    <img src="assents/img/tensor_flow/tf_logo.png" alt="Imagen Tensor Flow" class="tema-image">
                    <div class="tema-description">
                        <h3>Tensor Flow</h3>
                        <p>Descubre el fascinante mundo del aprendizaje automático y la inteligencia artificial con Tensor Flow, una poderosa biblioteca de código abierto desarrollada por Google para simplificar la construcción y el entrenamiento de modelos de aprendizaje automático.</p>
                    </div>
                    <a href="contenido/tensorflow/Base.aspx" class="btn-tema">Conoce más</a>
                </div>
            </div>

            <!-- Tema 3: AWS Amazon -->
            <div class="col-md-4">
                <div class="tema-container d-flex flex-column align-items-stretch">
                    <img src="assents/img/aws/aws_logo.png" alt="Imagen AWS Amazon" class="tema-image">
                    <div class="tema-description">
                        <h3>AWS Amazon</h3>
                        <p>Explora los servicios en la nube ofrecidos por Amazon Web Services (AWS), comprende su potencial para almacenar datos, alojar sitios web, desarrollar aplicaciones y mucho más.</p>
                    </div>
                    <a href="contenido/aws/AwsBase.aspx" class="btn-tema">Conoce más</a>
                </div>
            </div>

            <!-- Tema 4: El 5G y la tecnología del futuro -->
            <div class="col-md-4">
                <div class="tema-container d-flex flex-column align-items-stretch">
                    <img src="assents/img/5g/5G_logo.jpg" alt="Imagen El 5G y la tecnología del futuro" class="tema-image">
                    <div class="tema-description">
                        <h3>El 5G y la tecnología del futuro</h3>
                        <p>
                            Adéntrate en el futuro de las comunicaciones móviles y la conectividad con la tecnología 5G, conoce sus impactos, avances y posibles aplicaciones en diversos campos.
                        </p>
                    </div>
                    <a href="contenido/5g/Base.aspx" class="btn-tema">Conoce más</a>
                </div>
            </div>

            <!-- Tema 5: Data Warehouse -->
            <div class="col-md-4">
                <div class="tema-container d-flex flex-column align-items-stretch">
                    <img src="assents/img/warehouse/dwh_logo.png" alt="Imagen Data Warehouse" class="tema-image">
                    <div class="tema-description">
                        <h3>Data Warehouse</h3>
                        <p>Aprende sobre la importancia de los almacenes de datos, su estructura, diseño y funcionamiento para la toma de decisiones basadas en información organizada y accesible.</p>
                    </div>
                    <a href="contenido/warehouse/Base.aspx" class="btn-tema">Conoce más</a>
                </div>
            </div>
        </div>
    </div>


</body>
</html>
