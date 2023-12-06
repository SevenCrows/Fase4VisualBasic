Imports System.Data.SqlClient

Public Class ValidacionDatos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.MaintainScrollPositionOnPostBack = True
    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim usuario As String = txtUsuario.Text
        Dim contraseña As String = txtContraseña.Text
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("ConexionBD").ConnectionString
        Dim query As String = "SELECT COUNT(*) FROM Usuarios WHERE Usuario = @Usuario AND Contrasenia = @Contrasenia"

        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand(query, connection)
                command.Parameters.AddWithValue("@Usuario", usuario)
                command.Parameters.AddWithValue("@Contrasenia", contraseña)
                connection.Open()
                Dim count As Integer = Convert.ToInt32(command.ExecuteScalar())
                connection.Close()

                If count > 0 Then
                    Response.Redirect("Evaluacion.aspx")
                Else
                    lblMensaje.Text = "Usuario o contraseña incorrectos."
                    lblMensaje.Visible = True
                End If
            End Using
        End Using
    End Sub
End Class