<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Información sobre AWS</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="../../css-scss/temas.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <h1 class="mt-4 mb-4">Información sobre Amazon Web Services (AWS)</h1>    
        <p>En esta página encontrarás información detallada sobre diferentes aspectos relacionados con Amazon Web Services (AWS).</p>

        <!-- Tarjetas para temas -->
        <div class="card-container">
            <div class="card-item">
                <img src="https://via.placeholder.com/180" alt="Imagen AWS 1" class="card-img">
                <div class="card-content">
                    <div class="tema">
                        <h2>Amazon S3 (Simple Storage Service)</h2>
                        <p>Amazon S3, conocido como Simple Storage Service, es un servicio de almacenamiento en la nube altamente escalable ofrecido por Amazon Web Services (AWS). Permite a las empresas almacenar y recuperar grandes cantidades de datos de manera segura y eficiente. Este servicio utiliza una interfaz simple para gestionar datos a través de una API web, ofreciendo una alta durabilidad y disponibilidad del 99.999999999%. Los usuarios pueden almacenar archivos individuales de hasta 5 terabytes y no hay límites en la cantidad total de datos que se pueden almacenar.</p>
                    </div>
                </div>
            </div>
            <div class="card-item">
                <div class="card-content">
                    <h3>Escalabilidad y Usos</h3>
                    <p>Una característica clave de Amazon S3 es su escalabilidad. Los usuarios pueden escalar verticalmente su almacenamiento sin preocuparse por la infraestructura subyacente. Esto es útil para aplicaciones que manejan grandes volúmenes de datos, como almacenamiento de copias de seguridad, distribución de contenido estático para sitios web, almacenamiento de archivos multimedia, análisis de big data y mucho más. Además, ofrece diferentes clases de almacenamiento para adaptarse a las necesidades específicas de los datos, como almacenamiento estándar, de acceso frecuente y de acceso infrecuente, lo que permite a los usuarios optimizar los costos según el patrón de acceso a los datos.</p>

                    <h3>Seguridad y Control de Acceso</h3>
                    <p>Amazon S3 ofrece sólidas medidas de seguridad y control de acceso para proteger los datos almacenados. Los usuarios pueden aplicar políticas de control de acceso, configurar permisos granulares y utilizar cifrado para garantizar la seguridad de sus datos. Además, proporciona capacidades de registro y seguimiento para supervisar y auditar el acceso a los datos almacenados, lo que ayuda a cumplir con los requisitos de cumplimiento y regulaciones de seguridad. Esto convierte a Amazon S3 en una opción confiable para almacenar datos sensibles y críticos para el negocio.</p>
                </div>
            </div>

            <hr>

            <div class="card-item">
                <div class="card-content">
                    <h2>Elastic Compute Cloud (EC2)</h2>
                    <p>Elastic Compute Cloud (EC2) es uno de los servicios más populares de Amazon Web Services (AWS). Ofrece una plataforma flexible de computación en la nube que permite a los usuarios alquilar instancias virtuales de servidores para ejecutar aplicaciones. EC2 es altamente escalable, permitiendo a los usuarios aumentar o disminuir su capacidad computacional de manera dinámica según las necesidades. Esto brinda la capacidad de manejar cargas de trabajo variables y optimizar los recursos utilizados.</p>
                </div>
                <img src="https://via.placeholder.com/150" alt="Imagen AWS 2" class="card-img">
            </div>
            <div class="card-item">
                <div class="card-content">

                    <h3>Flexibilidad y Escalabilidad</h3>
                    <p>EC2 proporciona una variedad de opciones de instancias, que incluyen diferentes tipos de CPU, memoria, almacenamiento y capacidades de red. Los usuarios pueden elegir entre instancias con características específicas para satisfacer las demandas de sus aplicaciones. Además, la escalabilidad de EC2 permite aumentar o reducir la capacidad computacional en cuestión de minutos, lo que ayuda a mantener un rendimiento óptimo y a reducir costos al utilizar recursos solo cuando sea necesario.</p>

                    <div class="card-content">
                        <h3>Características Adicionales y Uso</h3>
                        <p>EC2 ofrece características adicionales como el autoescalado, que permite ajustar automáticamente la capacidad según la demanda, y la gestión de grupos de instancias para distribuir el tráfico. Además, se utiliza ampliamente para alojar aplicaciones web, servidores de aplicaciones, bases de datos, entornos de desarrollo y pruebas, entre otros casos de uso. Su flexibilidad y variedad de opciones hacen de EC2 una opción poderosa para empresas de cualquier tamaño.</p>
                    </div>
                </div>
            </div>

            <hr>

            <div class="card-item">
                <img src="https://via.placeholder.com/180" alt="Imagen AWS 1" class="card-img">
                <div class="card-content">
                    <div class="tema">
                        <h2>Amazon SNS (Simple Notification Service)</h2>
                        <p>Amazon SNS es un servicio de mensajería y notificación completamente administrado que permite a los usuarios enviar mensajes a una variedad de dispositivos y plataformas, incluyendo aplicaciones móviles, sitios web y otros servicios en la nube. Proporciona una manera simple y rentable de enviar notificaciones push a grandes cantidades de usuarios con una entrega confiable y escalabilidad instantánea. Este servicio flexible permite enviar notificaciones a través de SMS, correo electrónico, HTTP/S, Amazon SQS, aplicaciones móviles, entre otros.</p>
                    </div>
                </div>
            </div>
            <div class="card-item">
                <div class="card-content">
                    <h3>Flexibilidad y Personalización</h3>
                    <p>Amazon SNS ofrece flexibilidad en la forma en que se entregan las notificaciones. Los usuarios pueden personalizar el contenido y formato de los mensajes, adaptándolos a los requisitos específicos de sus aplicaciones y audiencia. Además, permite filtrar y segmentar destinatarios para enviar notificaciones a grupos específicos de usuarios basados en sus preferencias o comportamiento. La capacidad de enviar mensajes a través de múltiples canales y protocolos hace que Amazon SNS sea adecuado para una variedad de casos de uso, como alertas, actualizaciones de estado, promociones, entre otros.</p>
                    <h3>Escalabilidad y Confiabilidad</h3>
                    <p>El servicio se integra fácilmente con otras soluciones de AWS, aprovechando su escalabilidad y fiabilidad. Amazon SNS puede manejar automáticamente la escalabilidad, desde un pequeño número de mensajes hasta millones, y garantiza la entrega de mensajes incluso en condiciones de alta carga. Además, proporciona funciones de confirmación y supervisión para garantizar la entrega exitosa de mensajes, lo que lo convierte en una herramienta confiable para aplicaciones que requieren notificaciones en tiempo real.</p>
                </div>
            </div>

        </div>
    </div>
</body>
</html>
