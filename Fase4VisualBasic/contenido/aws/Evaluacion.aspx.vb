Public Class Evaluacion
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnReiniciarExamen_Click(sender As Object, e As EventArgs)
        Response.Redirect("Evaluacion.aspx")
    End Sub

    Protected Sub BotonEnviar_Click(sender As Object, e As EventArgs) Handles BotonEnviar.Click
        Dim respuestasCorrectas As Integer = 0

        ' Verificando las respuestas correctas
        If Opciones1.SelectedItem IsNot Nothing AndAlso Opciones1.SelectedItem.Value = "A" Then
            respuestasCorrectas += 1
        End If

        If Opciones2.SelectedItem IsNot Nothing AndAlso Opciones2.SelectedItem.Value = "C" Then
            respuestasCorrectas += 1
        End If

        If Opciones3.SelectedItem IsNot Nothing AndAlso Opciones3.SelectedItem.Value = "B" Then
            respuestasCorrectas += 1
        End If

        If Opciones4.SelectedItem IsNot Nothing AndAlso Opciones4.SelectedItem.Value = "C" Then
            respuestasCorrectas += 1
        End If

        If Opciones5.SelectedItem IsNot Nothing AndAlso Opciones5.SelectedItem.Value = "A" Then
            respuestasCorrectas += 1
        End If

        ' Agrega más verificaciones para otras preguntas aquí

        ' Mostrando el mensaje correspondiente
        If respuestasCorrectas >= 3 Then
            ClientScript.RegisterStartupScript(Me.GetType(), "mostrarPopupAprobado", "<script type='text/javascript'>mostrarPopupAprobado();</script>")
        Else
            ClientScript.RegisterStartupScript(Me.GetType(), "mostrarPopupNoAprobado", "<script type='text/javascript'>mostrarPopupNoAprobado();</script>")

        End If
    End Sub
End Class