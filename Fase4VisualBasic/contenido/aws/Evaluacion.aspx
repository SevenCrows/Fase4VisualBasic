<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Evaluacion.aspx.vb" Inherits="Fase4VisualBasic.Evaluacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página de Quiz</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
        .pregunta {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 20px;
        }

        .opciones label {
            display: inline-block;
            margin-bottom: 5px;
            margin-right: 15px;
        }
    </style>
    <script type="text/javascript">
        function mostrarPopup(mensaje) {
            alert(mensaje);
        }

        function mostrarPopupAprobado() {
            $('#modalAprobado').modal('show');
        }

        function mostrarPopupNoAprobado() {
            $('#modalNoAprobado').modal('show');
        }
    </script>
    <script type="text/javascript">
        function validarPreguntas() {
            var preguntas = document.querySelectorAll('.pregunta');
            for (var i = 0; i < preguntas.length; i++) {
                var radioButtons = preguntas[i].querySelectorAll('input[type="radio"]');
                var respondida = false;

                for (var j = 0; j < radioButtons.length; j++) {
                    if (radioButtons[j].checked) {
                        respondida = true;
                        break;
                    }
                }

                if (!respondida) {
                    alert("Por favor responde todas las preguntas.");
                    return false;
                }
            }
            return true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
           <h1 class="text-center">¡Examen AWS!</h1>
    <p class="lead text-center">Demuestra tu dominio en Amazon Web Services (AWS). Pon a prueba tus habilidades en la nube con nuestro desafiante examen. ¡Comienza ahora!</p>

            <div class="pregunta">
                <asp:Label ID="Pregunta1" runat="server" Text="¿Qué servicio de AWS se utiliza para almacenar objetos en la nube?" AssociatedControlID="Opciones1" CssClass="font-weight-bold"></asp:Label>
                <asp:RadioButtonList ID="Opciones1" runat="server" CssClass="opciones">
                    <asp:ListItem Text=" A) AWS S3 (Simple Storage Service)" Value="A" />
                    <asp:ListItem Text=" B) AWS EC2 (Elastic Compute Cloud)" Value="B" />
                    <asp:ListItem Text=" C) AWS RDS (Relational Database Service)" Value="C" />
                    <asp:ListItem Text=" D) AWS IAM (Identity and Access Management)" Value="D" />
                </asp:RadioButtonList>
            </div>

            <div class="pregunta">
                <asp:Label ID="Pregunta2" runat="server" Text="¿Cuál de los siguientes servicios de AWS se utiliza para implementar aplicaciones en contenedores?" AssociatedControlID="Opciones2" CssClass="font-weight-bold"></asp:Label>
                <asp:RadioButtonList ID="Opciones2" runat="server" CssClass="opciones">
                    <asp:ListItem Text=" A) AWS Lambda" Value="A" />
                    <asp:ListItem Text=" B) AWS Elastic Beanstalk" Value="B" />
                    <asp:ListItem Text=" C) AWS ECS (Elastic Container Service)" Value="C" />
                    <asp:ListItem Text=" D) AWS SQS (Simple Queue Service)" Value="D" />
                </asp:RadioButtonList>
            </div>

            <div class="pregunta">
                <asp:Label ID="Pregunta3" runat="server" Text="¿Qué servicio de AWS se utiliza para balancear el tráfico de red entre múltiples instancias EC2?" AssociatedControlID="Opciones3" CssClass="font-weight-bold"></asp:Label>
                <asp:RadioButtonList ID="Opciones3" runat="server" CssClass="opciones">
                    <asp:ListItem Text=" A) AWS Route 53" Value="A" />
                    <asp:ListItem Text=" B) AWS ELB (Elastic Load Balancing)" Value="B" />
                    <asp:ListItem Text=" C) AWS CloudFront" Value="C" />
                    <asp:ListItem Text=" D) AWS SNS (Simple Notification Service)" Value="D" />
                </asp:RadioButtonList>
            </div>

            <div class="pregunta">
                <asp:Label ID="Pregunta4" runat="server" Text="¿Cuál es el servicio de base de datos relacional completamente administrado de AWS?" AssociatedControlID="Opciones4" CssClass="font-weight-bold"></asp:Label>
                <asp:RadioButtonList ID="Opciones4" runat="server" CssClass="opciones">
                    <asp:ListItem Text=" A) Amazon DynamoDB" Value="A" />
                    <asp:ListItem Text=" B) Amazon Redshift" Value="B" />
                    <asp:ListItem Text=" C) Amazon Aurora" Value="C" />
                    <asp:ListItem Text=" D) Amazon Neptune" Value="D" />
                </asp:RadioButtonList>
            </div>

                  <div class="pregunta">
                <asp:Label ID="Pregunta5" runat="server" Text="¿Quién pintó la Mona Lisa?" AssociatedControlID="Opciones5" CssClass="font-weight-bold"></asp:Label>
                <asp:RadioButtonList ID="Opciones5" runat="server" CssClass="opciones">
                    <asp:ListItem Text=" A) AWS SQS (Simple Queue Service)" Value="A" />
                    <asp:ListItem Text=" B) AWS SNS (Simple Notification Service)" Value="B" />
                    <asp:ListItem Text=" C) AWS Kinesis" Value="C" />
                    <asp:ListItem Text=" D) AWS CloudWatch" Value="D" />
                </asp:RadioButtonList>
            </div>

            <asp:Button ID="BotonEnviar" runat="server" Text="Enviar" CssClass="btn btn-primary" OnClientClick="return validarPreguntas();" OnClick="BotonEnviar_Click" />
          
            <!-- Modal Aprobado -->
            <div class="modal fade" id="modalAprobado" tabindex="-1" role="dialog" aria-labelledby="modalAprobadoLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modalAprobadoLabel">¡Aprobado!</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            Has aprobado el examen.
                        </div>
                        <div class="modal-footer">
                            <a href="ValidacionDatos.aspx" class="btn btn-secondary">Salir</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal No Aprobado -->
            <div class="modal fade" id="modalNoAprobado" tabindex="-1" role="dialog" aria-labelledby="modalNoAprobadoLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modalNoAprobadoLabel">No aprobado</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            No has aprobado el examen.
                        </div>
                        <div class="modal-footer">
                            <a href="ValidacionDatos.aspx" class="btn btn-secondary">Salir</a>
                            <asp:Button ID="BtnReiniciarExamen" runat="server" Text="Reiniciar Examen" CssClass="btn btn-primary" OnClick="BtnReiniciarExamen_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
