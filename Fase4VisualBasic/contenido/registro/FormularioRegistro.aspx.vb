Imports System.Data.SqlClient

Public Class FormularioRegistro
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.MaintainScrollPositionOnPostBack = True
    End Sub

    Protected Sub BuscarUsuario(sender As Object, e As EventArgs) Handles btnBuscar.Click
        ConsultarUsuariosGrid(txtIdentificacionBusqueda.Text)
    End Sub

    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs) Handles btnRegistrar.Click
        InsertarUsuario()
        LimpiarCampos()
    End Sub

    Protected Sub gvUsuarios_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs)
        If e.CommandName = "EliminarUsuario" Then
            Dim idUsuario As Integer = Convert.ToInt32(e.CommandArgument)
            EliminarUsuario(idUsuario)
            ConsultarUsuariosGrid(txtIdentificacionBusqueda.Text)
        End If
    End Sub

    Private Sub LimpiarCampos()
        txtNombres.Text = ""
        txtApellidos.Text = ""
        txtIdentificacion.Text = ""
        txtTelefono.Text = ""
        txtUsuario.Text = ""
        txtContraseña.Text = ""
    End Sub

    Private Sub InsertarUsuario()
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConexionBD").ConnectionString
        Using connection As New SqlConnection(connectionString)
            Dim query As String = "INSERT INTO dbo.Usuarios (Nombres, Apellidos, Identificacion, Telefono, Usuario, Contrasenia) " &
               "VALUES (@Nombres, @Apellidos, @Identificacion, @Telefono, @Usuario, @Contrasenia)"

            Using cmd As New SqlCommand(query, connection)
                cmd.Parameters.Add("@Nombres", SqlDbType.NVarChar).Value = txtNombres.Text
                cmd.Parameters.Add("@Apellidos", SqlDbType.NVarChar).Value = txtApellidos.Text
                cmd.Parameters.Add("@Identificacion", SqlDbType.BigInt).Value = Convert.ToInt64(txtIdentificacion.Text)
                cmd.Parameters.Add("@Telefono", SqlDbType.BigInt).Value = Convert.ToInt64(txtTelefono.Text)
                cmd.Parameters.Add("@Usuario", SqlDbType.NVarChar).Value = txtUsuario.Text
                cmd.Parameters.Add("@Contrasenia", SqlDbType.NVarChar).Value = txtContraseña.Text
                connection.Open()
                cmd.ExecuteNonQuery()
            End Using
        End Using
    End Sub

    Private Sub ConsultarUsuariosGrid(identificacion As String)
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConexionBD").ConnectionString
        Dim query As String = $"SELECT ID, Nombres, Apellidos, Identificacion, Telefono, Usuario, Contrasenia FROM Usuarios WHERE Identificacion = '{identificacion}'"
        Using connection As New SqlConnection(connectionString)
            Using cmd As New SqlCommand(query, connection)
                Dim dt As New DataTable()
                connection.Open()
                Dim reader As SqlDataReader = cmd.ExecuteReader()
                dt.Load(reader)
                gvUsuarios.DataSource = dt
                gvUsuarios.DataBind()
            End Using
        End Using
    End Sub

    Private Sub EliminarUsuario(userId As Integer)
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConexionBD").ConnectionString
        Using connection As New SqlConnection(connectionString)
            connection.Open()
            Dim query As String = "DELETE FROM Usuarios WHERE ID = @ID"
            Using cmd As New SqlCommand(query, connection)
                cmd.Parameters.AddWithValue("@ID", userId)
                cmd.ExecuteNonQuery()
            End Using
        End Using
    End Sub
End Class