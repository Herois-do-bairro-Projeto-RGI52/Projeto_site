Imports System.Data.SqlClient

Partial Class problemas
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            CarregarDenuncias()
        End If
    End Sub

    Private Sub CarregarDenuncias()
        Dim conexao As New SqlConnection(ConfigurationManager.ConnectionStrings("conexaoBD").ConnectionString)

        Dim sql As String = "SELECT d.ID_DENUNCIA, d.CATEGORIA, d.BAIRRO, d.TITULO, d.DESCRICAO, d.FOTO_PATH, d.DATA_CRIACAO, u.NOME
                             FROM denuncia d
                             INNER JOIN usuario u ON d.ID_USUARIO = u.ID_USUARIO"

        Dim comando As New SqlCommand(sql, conexao)

        Try
            conexao.Open()
            Dim leitor As SqlDataReader = comando.ExecuteReader()

            rptDenuncias.DataSource = leitor
            rptDenuncias.DataBind()

        Catch ex As Exception
            lblMensagem.Text = "Erro ao carregar as denúncias: " & ex.Message
        Finally
            conexao.Close()
        End Try
    End Sub

    Protected Sub rptDenuncias_ItemCommand(source As Object, e As RepeaterCommandEventArgs)
        If e.CommandName = "VerDetalhes" Then
            Dim idDenuncia As String = e.CommandArgument.ToString()

            Dim conexao As New SqlConnection(ConfigurationManager.ConnectionStrings("conexaoBD").ConnectionString)
            Dim comando As New SqlCommand("SELECT d.*, u.NOME
                                           FROM denuncia d
                                           INNER JOIN usuario u ON d.ID_USUARIO = u.ID_USUARIO
                                           WHERE d.ID_DENUNCIA = @id", conexao)
            comando.Parameters.AddWithValue("@id", idDenuncia)

            Try
                conexao.Open()
                Dim leitor As SqlDataReader = comando.ExecuteReader()

                If leitor.Read() Then
                    lblTitulo.Text = leitor("TITULO").ToString()
                    lblCategoria.Text = leitor("CATEGORIA").ToString()
                    lblBairro.Text = leitor("BAIRRO").ToString()
                    lblDescricao.Text = leitor("DESCRICAO").ToString()
                    imgFoto.ImageUrl = leitor("FOTO_PATH").ToString()
                    lblNomeUsuario.Text = leitor("NOME").ToString()

                End If

                painelDetalhe.Visible = True

            Catch ex As Exception
                lblMensagem.Text = "Erro ao carregar os detalhes: " & ex.Message
            Finally
                conexao.Close()
            End Try
        End If
    End Sub
End Class
