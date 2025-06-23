<%@ Page Language="VB" AutoEventWireup="false" CodeFile="mensagens.aspx.vb" Inherits="mensagens" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="UTF-8">
    <title>Mensagens Recebidas</title>
    <link rel="stylesheet" href="../estilo/mensagens.css" />
    <link rel="stylesheet" href="../estilo/index.css" />
</head>
<body>
    <form id="form1" runat="server">


        <div class="barra-topo"></div>
        <header>
            <div class="logo">
                <img src="../imagens/logo.png" alt="Logo do site" />
            </div>
            <nav>
                <ul>
                    <li><a href="index.aspx">Início</a></li>
                    <li><a href="problemas.aspx">Problemas</a></li>
                    <li><a href="ranking.aspx">Ranking</a></li>
                    <li><a href="usuario.aspx">Perfil</a></li>
                    <li><a href="contato.aspx">Contato</a></li>
                    <li><a href="logout.aspx">Sair</a></li>
                </ul>
            </nav>
        </header>


        <div class="mensagens-container">
            <h2>Mensagens Recebidas</h2>

            <asp:Repeater ID="rptMensagens" runat="server">
                <ItemTemplate>
                    <div class="mensagem-card">
                        <h3><%# Eval("NOME") %></h3>
                        <p><strong>Email:</strong> <%# Eval("EMAIL") %></p>
                        <p><strong>Assunto:</strong> <%# Eval("ASSUNTO") %></p>
                        <p><strong>Mensagem:</strong> <%# Eval("MENSAGEM") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <asp:Label ID="lblMensagem" runat="server" ForeColor="Red"></asp:Label>
        </div>


        <footer class="site-footer">
            <div class="footer-container">
                <div class="footer-coluna">
                    <h4>Sobre</h4>
                    <ul>
                        <li><a href="#">Quem somos</a></li>
                        <li><a href="#">Missão</a></li>
                        <li><a href="#">Sustentabilidade</a></li>
                    </ul>
                </div>
                <div class="footer-coluna">
                    <h4>Institucional</h4>
                    <ul>
                        <li><a href="#">Carreiras</a></li>
                        <li><a href="#">Termos de uso</a></li>
                        <li><a href="#">Política de privacidade</a></li>
                    </ul>
                </div>
                <div class="footer-coluna">
                    <h4>Redes Sociais</h4>
                    <ul>
                        <li><a href="#">Instagram</a></li>
                        <li><a href="#">Facebook</a></li>
                        <li><a href="#">YouTube</a></li>
                    </ul>
                </div>
                <div class="footer-coluna">
                    <h4>Fale Conosco</h4>
                    <ul>
                        <li><a href="#">E-mail</a></li>
                        <li><a href="#">Whatsapp</a></li>
                        <li><a href="#">Central de ajuda</a></li>
                    </ul>
                </div>
            </div>

            <div class="footer-bottom">
                <p>&copy; 2025 Heróis do Bairro. Todos os direitos reservados.</p>
            </div>
        </footer>

    </form>
</body>
</html>
