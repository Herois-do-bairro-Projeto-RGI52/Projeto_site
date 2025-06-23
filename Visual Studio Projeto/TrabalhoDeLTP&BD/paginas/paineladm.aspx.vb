Imports System.Data
Imports System.Data.SqlClient

Partial Class paineladm
    Inherits System.Web.UI.Page

    Dim conexao As New SqlConnection(ConfigurationManager.ConnectionStrings("conexaoBD").ConnectionString)

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            CarregarUsuarios()
            CarregarDenuncias()
            CarregarMensagens()
        End If
    End Sub


    Private Sub CarregarUsuarios()
        Dim comando As New SqlCommand("SELECT * FROM usuario", conexao)
        Dim da As New SqlDataAdapter(comando)
        Dim dt As New DataTable()
        da.Fill(dt)
        rptUsuarios.DataSource = dt
        rptUsuarios.DataBind()
    End Sub

    Private Sub CarregarDenuncias()
        Dim comando As New SqlCommand("SELECT * FROM denuncia", conexao)
        Dim da As New SqlDataAdapter(comando)
        Dim dt As New DataTable()
        da.Fill(dt)
        rptDenuncias.DataSource = dt
        rptDenuncias.DataBind()
    End Sub

    Private Sub CarregarMensagens()
        Dim comando As New SqlCommand("SELECT * FROM mensagens", conexao)
        Dim da As New SqlDataAdapter(comando)
        Dim dt As New DataTable()
        da.Fill(dt)
        rptMensagens.DataSource = dt
        rptMensagens.DataBind()
    End Sub


    Protected Sub rptUsuarios_ItemCommand(source As Object, e As RepeaterCommandEventArgs) Handles rptUsuarios.ItemCommand
        Dim id As Integer = Convert.ToInt32(e.CommandArgument)

        If e.CommandName = "ExcluirUsuario" Then
            Dim cmd As New SqlCommand("DELETE FROM usuario WHERE ID_USUARIO=@id", conexao)
            cmd.Parameters.AddWithValue("@id", id)
            conexao.Open()
            cmd.ExecuteNonQuery()
            conexao.Close()
            CarregarUsuarios()

        ElseIf e.CommandName = "EditarUsuario" Then
            Dim nome As String = CType(e.Item.FindControl("txtNome"), TextBox).Text
            Dim email As String = CType(e.Item.FindControl("txtEmail"), TextBox).Text

            Dim cmd As New SqlCommand("UPDATE usuario SET NOME=@nome, EMAIL=@email WHERE ID_USUARIO=@id", conexao)
            cmd.Parameters.AddWithValue("@nome", nome)
            cmd.Parameters.AddWithValue("@email", email)
            cmd.Parameters.AddWithValue("@id", id)
            conexao.Open()
            cmd.ExecuteNonQuery()
            conexao.Close()
            CarregarUsuarios()
        End If
    End Sub


    Protected Sub rptDenuncias_ItemCommand(source As Object, e As RepeaterCommandEventArgs) Handles rptDenuncias.ItemCommand
        Dim id As Integer = Convert.ToInt32(e.CommandArgument)

        If e.CommandName = "ExcluirDenuncia" Then
            Dim cmd As New SqlCommand("DELETE FROM denuncia WHERE ID_DENUNCIA=@id", conexao)
            cmd.Parameters.AddWithValue("@id", id)
            conexao.Open()
            cmd.ExecuteNonQuery()
            conexao.Close()
            CarregarDenuncias()

        ElseIf e.CommandName = "EditarDenuncia" Then
            Dim titulo As String = CType(e.Item.FindControl("txtTitulo"), TextBox).Text
            Dim categoria As String = CType(e.Item.FindControl("txtCategoria"), TextBox).Text
            Dim bairro As String = CType(e.Item.FindControl("txtBairro"), TextBox).Text

            Dim cmd As New SqlCommand("UPDATE denuncia SET TITULO=@titulo, CATEGORIA=@categoria, BAIRRO=@bairro WHERE ID_DENUNCIA=@id", conexao)
            cmd.Parameters.AddWithValue("@titulo", titulo)
            cmd.Parameters.AddWithValue("@categoria", categoria)
            cmd.Parameters.AddWithValue("@bairro", bairro)
            cmd.Parameters.AddWithValue("@id", id)
            conexao.Open()
            cmd.ExecuteNonQuery()
            conexao.Close()
            CarregarDenuncias()
        End If
    End Sub


    Protected Sub rptMensagens_ItemCommand(source As Object, e As RepeaterCommandEventArgs) Handles rptMensagens.ItemCommand
        Dim id As Integer = Convert.ToInt32(e.CommandArgument)

        If e.CommandName = "ExcluirMensagem" Then

            Dim cmd As New SqlCommand("DELETE FROM mensagens WHERE ID_MENSAGEM=@id", conexao)
            cmd.Parameters.AddWithValue("@id", id)

            Try
                conexao.Open()
                cmd.ExecuteNonQuery()
            Catch ex As Exception
                lblMensagem.Text = "Erro ao excluir mensagem: " & ex.Message
            Finally
                conexao.Close()
            End Try

            CarregarMensagens()

        ElseIf e.CommandName = "EditarMensagem" Then

            Dim nome As String = CType(e.Item.FindControl("txtNome"), TextBox).Text
            Dim email As String = CType(e.Item.FindControl("txtEmail"), TextBox).Text
            Dim assunto As String = CType(e.Item.FindControl("txtAssunto"), TextBox).Text
            Dim mensagem As String = CType(e.Item.FindControl("txtMensagem"), TextBox).Text


            Dim cmd As New SqlCommand("UPDATE mensagens SET NOME=@nome, EMAIL=@email, ASSUNTO=@assunto, MENSAGEM=@mensagem WHERE ID_MENSAGEM=@id", conexao)
            cmd.Parameters.AddWithValue("@nome", nome)
            cmd.Parameters.AddWithValue("@email", email)
            cmd.Parameters.AddWithValue("@assunto", assunto)
            cmd.Parameters.AddWithValue("@mensagem", mensagem)
            cmd.Parameters.AddWithValue("@id", id)

            Try
                conexao.Open()
                cmd.ExecuteNonQuery()
            Catch ex As Exception
                lblMensagem.Text = "Erro ao editar mensagem: " & ex.Message
            Finally
                conexao.Close()
            End Try

            CarregarMensagens()

        End If
    End Sub
End Class
