Imports System.Data.SqlClient

Partial Class usuario
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("IDUsuario") Is Nothing Then
            Response.Redirect("login.aspx")
        End If

        If Not IsPostBack Then
            CarregarDadosUsuario()
        End If
    End Sub

    Private Sub CarregarDadosUsuario()
        Dim conexao As New SqlConnection(ConfigurationManager.ConnectionStrings("conexaoBD").ConnectionString)

        Dim comando As New SqlCommand("SELECT * FROM usuario WHERE ID_USUARIO = @id", conexao)
        comando.Parameters.AddWithValue("@id", Session("IDUsuario"))

        Try
            conexao.Open()
            Dim leitor As SqlDataReader = comando.ExecuteReader()

            If leitor.Read() Then
                txtNome.Text = leitor("NOME").ToString()
                txtEmail.Text = leitor("EMAIL").ToString()
                txtSenha.Text = leitor("SENHA").ToString()
                ddlBairro.SelectedValue = leitor("BAIRRO").ToString()
            End If

        Catch ex As Exception
            lblMensagem.Text = "Erro ao carregar dados: " & ex.Message
        Finally
            conexao.Close()
        End Try
    End Sub

    Protected Sub btnSalvar_Click(sender As Object, e As EventArgs) Handles btnSalvar.Click
        Dim conexao As New SqlConnection(ConfigurationManager.ConnectionStrings("conexaoBD").ConnectionString)

        Dim comando As New SqlCommand("
            UPDATE usuario SET 
                NOME = @nome,
                EMAIL = @email,
                SENHA = @senha,
                BAIRRO = @bairro
            WHERE ID_USUARIO = @id", conexao)

        comando.Parameters.AddWithValue("@nome", txtNome.Text)
        comando.Parameters.AddWithValue("@email", txtEmail.Text)
        comando.Parameters.AddWithValue("@senha", txtSenha.Text)
        comando.Parameters.AddWithValue("@bairro", ddlBairro.SelectedValue)
        comando.Parameters.AddWithValue("@id", Session("IDUsuario"))

        Try
            conexao.Open()
            comando.ExecuteNonQuery()

            lblMensagem.Text = "Dados atualizados com sucesso!"


            Session("NomeUsuario") = txtNome.Text
            Session("EmailUsuario") = txtEmail.Text

        Catch ex As Exception
            lblMensagem.Text = "Erro ao atualizar: " & ex.Message
        Finally
            conexao.Close()
        End Try
    End Sub
End Class
