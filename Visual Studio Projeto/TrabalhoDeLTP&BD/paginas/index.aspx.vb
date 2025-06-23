Imports System.Data.SqlClient
Imports System.IO

Partial Class index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("IDUsuario") Is Nothing Then
            Response.Redirect("login.aspx")
        End If
    End Sub


    Protected Sub btnEnviar_Click(sender As Object, e As EventArgs) Handles btnEnviar.Click
        Dim conexao As New SqlConnection(ConfigurationManager.ConnectionStrings("conexaoBD").ConnectionString)
        Dim comando As New SqlCommand("INSERT INTO denuncia (ID_USUARIO, CATEGORIA, BAIRRO, TITULO, DESCRICAO, FOTO_PATH) VALUES (@idUsuario, @categoria, @bairro, @titulo, @descricao, @foto)", conexao)
        Dim idUsuario As Integer = Convert.ToInt32(Session("IDUsuario"))
        Dim fotoPath As String = ""

        If fileFoto.HasFile Then
            Try
                Dim nomeArquivo As String = Path.GetFileName(fileFoto.FileName)
                Dim pastaDestino As String = Server.MapPath("~/pasta_salvar_fotos/")


                If Not Directory.Exists(pastaDestino) Then
                    Directory.CreateDirectory(pastaDestino)
                End If


                fileFoto.SaveAs(Path.Combine(pastaDestino, nomeArquivo))


                fotoPath = "~/pasta_salvar_fotos/" & nomeArquivo

            Catch ex As Exception
                lblMensagem.Text = "Erro ao salvar a foto: " & ex.Message
                Exit Sub
            End Try
        End If

        Dim categoria As String = ddlCategoria.SelectedValue
        Dim bairro As String = ddlBairro.SelectedValue
        Dim titulo As String = txtTitulo.Text
        Dim descricao As String = txtDescricao.Text

        comando.Parameters.AddWithValue("@categoria", categoria)
        comando.Parameters.AddWithValue("@bairro", bairro)
        comando.Parameters.AddWithValue("@titulo", titulo)
        comando.Parameters.AddWithValue("@descricao", descricao)
        comando.Parameters.AddWithValue("@foto", fotoPath)
        comando.Parameters.AddWithValue("@idUsuario", idUsuario)

        Try
            conexao.Open()
            comando.ExecuteNonQuery()
            lblMensagem.Text = "Denúncia enviada com sucesso!"
        Catch ex As Exception
            lblMensagem.Text = "Erro ao enviar denúncia: " & ex.Message
        Finally
            conexao.Close()
        End Try
    End Sub
End Class