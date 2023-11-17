<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Audios.aspx.vb" Inherits="Fase4VisualBasic.Audios" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Podcasts AWS</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link href="../../css-scss/audio.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <h1 class="mt-4 mb-4">Podcasts AWS</h1>

        <div class="card-deck">
            <div class="card category-card">
                <center>
                    <img src="../../assents/img/aws/podcast_latam.jpg" alt="Imagen Categoría 1" class="card-img-top category-image">
                </center>
                <div class="card-body">
                    <ul class="audio-list">
                        <li class="audio-item">
                            <audio controls>
                                <source src="https://d3h2ozso0dirfl.cloudfront.net/episodes/EP168_Tech_Contenedores_Seguridad_EKS.mp3" type="audio/mpeg">                               
                            </audio>
                            <p>#168: Contenedores en AWS - Seguridad en Amazon EKS</p>
                        </li>
                        <li class="audio-item">
                            <audio controls>
                                <source src="https://d3h2ozso0dirfl.cloudfront.net/episodes/EP169-TalentoCloud-PoderTransformadorNube.mp3" type="audio/mpeg">                               
                            </audio>
                            <p>#169: Talento Cloud - El poder transformador de la nube</p>
                        </li>
                         <li class="audio-item">
                            <audio controls>
                                <source src="https://d3h2ozso0dirfl.cloudfront.net/episodes/EP170-Technical-Analytics-DataMesh.mp3" type="audio/mpeg">                                
                            </audio>
                            <p>#170: Analítica en AWS - Arquitecturas de Data Mesh</p>
                        </li>
                        <li class="audio-item">
                            <audio controls>
                                <source src="https://d3h2ozso0dirfl.cloudfront.net/episodes/EP171-TalentoCloud-NubeIA.mp3" type="audio/mpeg">                               
                            </audio>
                            <p>#171: Talento Cloud - La nube también es Inteligencia Artificial</p>
                        </li>
                       
                    </ul>
                </div>
            </div>

            <div class="card category-card">
                <center>
                    <img src="../../assents/img/aws/podcast_innovacion.jpg" alt="Imagen Categoría 2" class="card-img-top category-image">
                </center>
                <div class="card-body">
                    <ul class="audio-list">
                        <li class="audio-item">
                            <audio controls>
                                <source src="https://d3s3gn7htg02ho.cloudfront.net/Innovando_con_AWS_cap28_eHealtAI.mp3" type="audio/mpeg">
                            </audio>
                            <p>#23: StackZone</p>
                        </li>
                        <li class="audio-item">
                            <audio controls>
                                <source src="https://d3s3gn7htg02ho.cloudfront.net/Innovando_con_AWS_cap28_eHealtAI.mp3" type="audio/mpeg">
                            </audio>
                            <p>#28: Diagnóstico mediante IA con eHealthAI</p>
                        </li>
                        <li class="audio-item">
                            <audio controls>
                                <source src="https://d3s3gn7htg02ho.cloudfront.net/Innovando_con_AWS_cap27_RAG.mp3" type="audio/mpeg">
                            </audio>
                            <p>#27: IA generativa con datos propios sin re-entrenar</p>
                        </li>
                        <li class="audio-item">
                            <audio controls>
                                <source src="https://d3s3gn7htg02ho.cloudfront.net/Innovando_con_AWS_cap26_Levelab.mp3" type="audio/mpeg">
                            </audio>
                            <p>#26: Modernizando la educación con Levelab</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</body>
</html>

