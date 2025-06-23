<%@ Page Language="VB" AutoEventWireup="false" CodeFile="certificado.aspx.vb" Inherits="certificado" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Certificado</title>
    <link rel="stylesheet" href="../estilo/certificado.css" />
</head>
<body>

    <form id="form1" runat="server" class="certificado-container">

        <div class="certificado-box">

            <div class="logo-certificado">
                <img src="../imagens/logo.png" alt="Logo do site" />
            </div>

            <h2>Certificado de “Agente do Impacto”</h2>

            <h3><asp:Label ID="lblNome" runat="server" /></h3>

            <p>
                Este certificado reconhece <strong><asp:Label ID="lblNome2" runat="server" /></strong> 
                como um cidadão ativo que contribuiu significativamente para a melhoria da sua comunidade 
                através de ações na plataforma <strong>Heróis do Bairro</strong>.
            </p>

            <asp:Label ID="lblDescricao" runat="server" 
                Text="Por suas denúncias, colaborações e participação ativa na transformação do bairro." />

            <h4>Heróis do Bairro</h4>

            <asp:Button ID="btnGerarPDF" runat="server" Text="Baixar PDF" CssClass="btn-pdf" OnClick="btnGerarPDF_Click" />
        </div>

    </form>

</body>
</html>
