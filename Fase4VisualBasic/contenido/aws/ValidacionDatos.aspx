<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ValidacionDatos.aspx.vb" Inherits="Fase4VisualBasic.ValidacionDatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Iniciar sesión</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .login-container {
            max-width: 400px;
            margin: auto;
            margin-top: 100px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="login-container">
                <h2 class="mb-4">Iniciar sesión</h2>
                <asp:Label ID="lblMensaje" runat="server" CssClass="alert alert-danger mb-3" Visible="false"></asp:Label>

                <div class="form-group">
                    <label for="txtUsuario">Usuario:</label>
                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtContraseña">Contraseña:</label>
                    <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnLogin" runat="server" Text="Iniciar sesión" CssClass="btn btn-primary btn-block" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
