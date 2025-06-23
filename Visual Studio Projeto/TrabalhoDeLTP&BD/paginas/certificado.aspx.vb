Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports System.IO

Partial Class certificado
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("usuarioLogado") Is Nothing Then
                Response.Redirect("login.aspx")
            End If

            lblNome.Text = Session("usuarioLogado").ToString()
        End If
    End Sub

    Protected Sub btnGerarPDF_Click(sender As Object, e As EventArgs)
        Response.ContentType = "application/pdf"
        Response.AddHeader("content-disposition", "attachment;filename=certificado.pdf")
        Response.Cache.SetCacheability(HttpCacheability.NoCache)

        Dim documento As New Document(PageSize.A4, 50, 50, 80, 50)
        Dim output As New MemoryStream()
        Dim writer As PdfWriter = PdfWriter.GetInstance(documento, output)

        documento.Open()


        Dim fonteTitulo As New Font(iTextSharp.text.Font.FontFamily.HELVETICA, 24, iTextSharp.text.Font.BOLD, BaseColor.BLACK)
        Dim fonteSubtitulo As New Font(iTextSharp.text.Font.FontFamily.HELVETICA, 16, iTextSharp.text.Font.BOLD, New BaseColor(0, 102, 204))
        Dim fonteTexto As New Font(iTextSharp.text.Font.FontFamily.HELVETICA, 12, iTextSharp.text.Font.NORMAL, BaseColor.DARK_GRAY)
        Dim fonteRodape As New Font(iTextSharp.text.Font.FontFamily.HELVETICA, 10, iTextSharp.text.Font.ITALIC, BaseColor.GRAY)


        Dim titulo As New Paragraph("CERTIFICADO DE PARTICIPAÇÃO", fonteTitulo)
        titulo.Alignment = Element.ALIGN_CENTER
        titulo.SpacingAfter = 30
        documento.Add(titulo)


        Dim subtitulo As New Paragraph("Reconhecimento como Agente do Impacto", fonteSubtitulo)
        subtitulo.Alignment = Element.ALIGN_CENTER
        subtitulo.SpacingAfter = 20
        documento.Add(subtitulo)


        Dim nomeUsuario As String = Session("usuarioLogado").ToString()
        Dim nomeTexto As New Paragraph(nomeUsuario, New Font(iTextSharp.text.Font.FontFamily.HELVETICA, 20, iTextSharp.text.Font.BOLD, BaseColor.BLACK))
        nomeTexto.Alignment = Element.ALIGN_CENTER
        nomeTexto.SpacingAfter = 20
        documento.Add(nomeTexto)


        Dim corpoTexto As New Paragraph("Certificamos que o(a) participante acima foi reconhecido(a) por sua contribuição ativa na identificação e denúncia de problemas no bairro, promovendo melhorias para a comunidade local através da plataforma 'Heróis do Bairro'.", fonteTexto)
        corpoTexto.Alignment = Element.ALIGN_JUSTIFIED
        corpoTexto.SpacingAfter = 30
        documento.Add(corpoTexto)


        Dim linha As New Paragraph("______________________________", fonteTexto)
        linha.Alignment = Element.ALIGN_CENTER
        linha.SpacingAfter = 5
        documento.Add(linha)

        Dim assinante As New Paragraph("Equipe Heróis do Bairro", fonteTexto)
        assinante.Alignment = Element.ALIGN_CENTER
        documento.Add(assinante)


        documento.Add(New Paragraph("Emitido em: " & DateTime.Now.ToString("dd/MM/yyyy"), fonteRodape))

        documento.Close()

        Response.OutputStream.Write(output.GetBuffer(), 0, output.GetBuffer().Length)
        Response.OutputStream.Flush()
        Response.OutputStream.Close()
    End Sub
End Class
