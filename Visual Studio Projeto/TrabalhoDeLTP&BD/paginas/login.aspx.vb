Imports System.Data.SqlClient

Partial Class login
    Inherits System.Web.UI.Page


    Protected Sub btnEntrar_Click(sender As Object, e As EventArgs) Handles btnEntrar.Click
        Dim conexao As New SqlConnection(ConfigurationManager.ConnectionStrings("ConexaoBD").ConnectionString)
        Dim comando As New SqlCommand("SELECT * FROM USUARIO WHERE EMAIL = @email AND SENHA = @senha", conexao)

        comando.Parameters.AddWithValue("@email", txtEmail.Text)
        comando.Parameters.AddWithValue("@senha", txtSenha.Text)

        Try
            conexao.Open()
            Dim leitor As SqlDataReader = comando.ExecuteReader()
            If leitor.HasRows Then
                leitor.Read()

                Session("IDUsuario") = leitor("ID_USUARIO")
                Session("NomeUsuario") = leitor("NOME")
                Session("EmailUsuario") = leitor("EMAIL")
                Session("usuarioLogado") = txtEmail.Text

                Response.Redirect("index.aspx")
            Else
                lblMensagem.Text = "Email ou senha inválidos."
            End If
        Catch ex As Exception
            lblMensagem.Text = "Erro ao conectar: " & ex.Message
        Finally
            conexao.Close()
        End Try
    End Sub

    Protected Sub btnCadastrar_Click(sender As Object, e As EventArgs) Handles btnCadastrar.Click
        Response.Redirect("cadastro.aspx")
    End Sub
End Class