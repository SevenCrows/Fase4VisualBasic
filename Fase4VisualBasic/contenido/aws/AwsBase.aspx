<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AwsBase.aspx.vb" Inherits="Fase4VisualBasic.AwsBase" %>


<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AWS</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="../../css-scss/base.css" rel="stylesheet" />
    <link href="../../css-scss/temas.css" rel="stylesheet" />    
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script>
        function cargarContenido(opcion) {
            var url = '';

            switch (opcion) {
                case 'texto':
                    url = 'Informacion.aspx';
                    break;
                case 'videos':
                    url = 'Videos.aspx';
                    break;
                case 'sonidos':
                    url = 'contenido_sonidos.html';
                    break;
                case 'texto_pdf':
                    url = 'contenido_texto_pdf.html';
                    break;
                case 'examen':
                    url = 'contenido_examen.html';
                    break;
                default:
                    break;
            }

            if (url !== '') {
                $('.content-container iframe').attr('src', url);
                $('.content-container iframe').show();
                $('.menu-item').removeClass('selected');
                $('#' + opcion).addClass('selected');
            } else {
                $('.content-container iframe').hide();
            }
        }


        $(document).ready(function () {
            cargarContenido('texto');
        });
    </script>

</head>
<body>
    <!-- Menú superior -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Contenido didáctico UNAD</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Metadatos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Tensor Flow</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Aws Amazon</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">5G</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Data Warehouse</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Banner -->
    <div class="container-fluid p-0 bg-banner">
        <img src="../../assents/img/logo_unad.png" alt="Banner Image" class="banner-image">
    </div>

    <!-- Menú lateral -->
    <div class="menu-container">
        <div class="menu-item" id="texto" onclick="cargarContenido('texto')">Texto</div>
        <div class="menu-item" id="videos" onclick="cargarContenido('videos')">Videos</div>
        <div class="menu-item" id="sonidos" onclick="cargarContenido('sonidos')">Sonidos</div>
        <div class="menu-item" id="texto_pdf" onclick="cargarContenido('texto_pdf')">Texto PDF</div>
        <div class="menu-item" id="examen" onclick="cargarContenido('examen')">Examen</div>
    </div>

    <!-- Contenido dinámico -->
    <div class="content-container">
        <iframe id="iframeContenido" src="" frameborder="0"></iframe>
    </div>
</body>
</html>
