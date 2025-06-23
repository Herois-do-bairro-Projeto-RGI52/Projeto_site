Imports System.Data.SqlClient

Partial Class mensagens
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            CarregarMensagens()
        End If
    End Sub

    Private Sub CarregarMensagens()
        Dim conexao As New SqlConnection(ConfigurationManager.ConnectionStrings("conexaoBD").ConnectionString)

        Try
            conexao.Open()

            Dim comando As New SqlCommand("SELECT * FROM mensagens ORDER BY DATA_ENVIO DESC", conexao)
            Dim leitor As SqlDataReader = comando.ExecuteReader()

            rptMensagens.DataSource = leitor
            rptMensagens.DataBind()

        Catch ex As Exception
            lblMensagem.Text = "Erro ao carregar mensagens: " & ex.Message
        Finally
            conexao.Close()
        End Try
    End Sub
End Class
