Imports System.Data.SqlClient

Partial Class contato
    Inherits System.Web.UI.Page

    Protected Sub btnEnviar_Click(sender As Object, e As EventArgs) Handles btnEnviar.Click
        Dim conexao As New SqlConnection(ConfigurationManager.ConnectionStrings("conexaoBD").ConnectionString)

        Dim assunto As String = txtAssunto.Text

        Dim comando As New SqlCommand("INSERT INTO mensagens (nome, email, assunto, mensagem) VALUES (@nome, @email, @assunto, @mensagem)", conexao)
        comando.Parameters.AddWithValue("@nome", txtNome.Text)
        comando.Parameters.AddWithValue("@email", txtEmail.Text)
        comando.Parameters.AddWithValue("@assunto", assunto)
        comando.Parameters.AddWithValue("@mensagem", txtMensagem.Text)


        Try
            conexao.Open()
            comando.ExecuteNonQuery()
            lblMensagem.Text = "Mensagem enviada com sucesso!"
        Catch ex As Exception
            lblMensagem.Text = "Erro ao enviar a mensagem: " & ex.Message
        Finally
            conexao.Close()
        End Try
    End Sub
End Class
