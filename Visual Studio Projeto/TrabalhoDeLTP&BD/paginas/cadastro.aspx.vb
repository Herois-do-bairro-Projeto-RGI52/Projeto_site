Imports System.Data.SqlClient
Imports System.Globalization
Imports System.Security.Cryptography

Partial Class cadastro
    Inherits System.Web.UI.Page
    Protected Sub btnCadastrar_Click(sender As Object, e As EventArgs) Handles btnCadastrar.Click
        Dim conexao As New SqlConnection(ConfigurationManager.ConnectionStrings("conexaoBD").ConnectionString)
        Dim comando As New SqlCommand("INSERT INTO usuario (NOME, EMAIL, SENHA) VALUES (@nome, @email, @senha)", conexao)

        Dim id_usuario As String
        Dim nome As String = txtNome.Text
        Dim email As String = txtEmail.Text
        Dim senha As String = txtSenha.Text

        comando.Parameters.AddWithValue("@nome", nome)
        comando.Parameters.AddWithValue("@email", email)
        comando.Parameters.AddWithValue("@senha", senha)

        Try
            conexao.Open()
            comando.ExecuteNonQuery()
            lblMensagem.Text = "Cadastro realizado com sucesso!"
            Response.Redirect("login.aspx")
        Catch ex As Exception
            lblMensagem.Text = "Erro ao cadastrar: " & ex.Message
        Finally
            conexao.Close()
        End Try
    End Sub

    Protected Sub btnlogin_Click(sender As Object, e As EventArgs) Handles btnlogin.Click
        Response.Redirect("login.aspx")
    End Sub
End Class
