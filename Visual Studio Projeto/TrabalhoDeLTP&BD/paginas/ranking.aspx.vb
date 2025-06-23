Imports System.Data.SqlClient

Partial Class ranking
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("IDUsuario") Is Nothing Then
            Response.Redirect("login.aspx")
        End If

        If Not IsPostBack Then
            CarregarRanking()
        End If
    End Sub

    Private Sub CarregarRanking()
        Dim conexao As New SqlConnection(ConfigurationManager.ConnectionStrings("conexaoBD").ConnectionString)

        Dim sql As String = "
            SELECT 
                u.NOME, 
                COUNT(d.ID_DENUNCIA) AS TotalDenuncias
            FROM 
                usuario u
            LEFT JOIN 
                denuncia d ON u.ID_USUARIO = d.ID_USUARIO
            GROUP BY 
                u.NOME
            ORDER BY 
                TotalDenuncias DESC;"

        Dim comando As New SqlCommand(sql, conexao)

        Try
            conexao.Open()
            Dim leitor As SqlDataReader = comando.ExecuteReader()

            rptRanking.DataSource = leitor
            rptRanking.DataBind()

        Catch ex As Exception
            lblMensagem.Text = "Erro ao carregar ranking: " & ex.Message
        Finally
            conexao.Close()
        End Try
    End Sub
End Class
