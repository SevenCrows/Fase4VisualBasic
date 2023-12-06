<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FormularioRegistro.aspx.vb" Inherits="Fase4VisualBasic.FormularioRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registro de Usuarios</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link href="../../css-scss/base.css" rel="stylesheet" />
</head>
<body>

    <!-- Menú superior -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="../../Default.aspx">Contenido didáctico UNAD</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="../metadatos/Base.aspx">Metadatos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../tensorflow/Base.aspx">Tensor Flow</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Aws Amazon</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../5g/Base.aspx">5G</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../warehouse/Base.aspx">Data Warehouse</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Banner -->
    <div class="container-fluid p-0 bg-banner">
        <img src="../../assents/img/logo_unad.png" alt="Banner Image" class="banner-image" />
    </div>

    <div class="content-container">
        <form id="form1" runat="server">
            <div class="container mt-5">
                <h2>Registro de Usuarios</h2>
                <asp:ValidationSummary ID="vsErrores" runat="server" CssClass="alert alert-danger" ValidationGroup="registroUsuario" />
                <div class="form-group">
                    <label>Nombres:</label>
                    <asp:TextBox ID="txtNombres" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNombres" runat="server" ControlToValidate="txtNombres" ErrorMessage="Ingrese su nombre" Text="*" CssClass="text-danger" ValidationGroup="registroUsuario" />
                </div>
                <div class="form-group">
                    <label>Apellidos:</label>
                    <asp:TextBox ID="txtApellidos" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvApellidos" runat="server" ControlToValidate="txtApellidos" ErrorMessage="Ingrese sus apellidos" Text="*" CssClass="text-danger" ValidationGroup="registroUsuario" />
                </div>
                <div class="form-group">
                    <label>Identificación:</label>
                    <asp:TextBox ID="txtIdentificacion" runat="server" CssClass="form-control" TextMode="Number" oninput="limitarLongitud(this, 12)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvIdentificacion" runat="server" ControlToValidate="txtIdentificacion" ErrorMessage="Ingrese su identificación" Text="*" CssClass="text-danger" ValidationGroup="registroUsuario" />
                </div>
                <div class="form-group">
                    <label>Teléfono:</label>
                    <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" TextMode="Number" oninput="limitarLongitud(this, 10)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Ingrese su teléfono" Text="*" CssClass="text-danger" ValidationGroup="registroUsuario" />
                    <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Formato de teléfono inválido" ValidationExpression="^\d{10}$" Text="*" CssClass="text-danger" ValidationGroup="registroUsuario" />
                </div>
                <div class="form-group">
                    <label>Usuario:</label>
                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Ingrese un usuario" Text="*" CssClass="text-danger" ValidationGroup="registroUsuario" />
                </div>
                <div class="form-group">
                    <label>Contraseña:</label>
                    <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Ingrese una contraseña" Text="*" CssClass="text-danger" ValidationGroup="registroUsuario" />
                </div>
                <div class="form-group">
                    <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" CssClass="btn btn-primary" />
                </div>



                <hr />
                <!-- Otra línea horizontal para separar las secciones -->
                <h2>Consulta y Eliminación de Usuarios</h2>
                <div class="form-group">
                    <label>Buscar por Identificación:</label>
                    <asp:TextBox ID="txtIdentificacionBusqueda" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-info" OnClick="BuscarUsuario" />
                </div>

                <div>

                    <asp:GridView ID="gvUsuarios" runat="server" CssClass="table table-bordered" OnRowCommand="gvUsuarios_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="Acciones">
                                <ItemTemplate>
                                    <asp:Button runat="server" ID="btnEliminar" Text="Eliminar" CssClass="btn btn-danger btn-sm" CommandName="EliminarUsuario" CommandArgument='<%# Eval("ID") %>' OnClientClick="return confirm('¿Seguro que deseas eliminar este usuario?');" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </form>
    </div>
    <script>
        function limitarLongitud(elemento, maxLongitud) {
            if (elemento.value.length > maxLongitud) {
                elemento.value = elemento.value.slice(0, maxLongitud);
            }
        }
    </script>
</body>
</html>
