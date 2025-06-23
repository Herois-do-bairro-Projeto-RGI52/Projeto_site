<%@ Page Language="VB" AutoEventWireup="false" CodeFile="usuario.aspx.vb" Inherits="usuario" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Perfil do Usuário</title>
    <link rel="stylesheet" href="../estilo/usuario.css" />
</head>
<body>

    <div class="barra-topo"></div>

    <header>
        <div class="logo">
            <img src="../imagens/logo.png" alt="Logo">
        </div>
        <nav>
            <ul>
                <li><a href="index.aspx">Início</a></li>
                <li><a href="problemas.aspx">Problemas</a></li>
                <li><a href="usuario.aspx">Meu Perfil</a></li>
                <li><a href="logout.aspx">Sair</a></li>
            </ul>
        </nav>
    </header>

    <div class="area-usuario">
        <div class="container-usuario">
            <h2>Meu Perfil</h2>
            <p class="subtitulo">Atualize seus dados</p>

            <form id="form1" runat="server" class="form-usuario">

                <div class="grupo">
                    <label>Nome:</label>
                    <asp:TextBox ID="txtNome" runat="server" CssClass="input"></asp:TextBox>
                </div>

                <div class="grupo">
                    <label>Email:</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="input"></asp:TextBox>
                </div>

                <div class="grupo">
                    <label>Senha:</label>
                    <asp:TextBox ID="txtSenha" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                </div>

                <div class="grupo">
                    <label>Bairro:</label>
                    <asp:DropDownList ID="ddlBairro" runat="server" CssClass="input">
                        <asp:ListItem>Valverde</asp:ListItem>
                        <asp:ListItem>Jardim Laranjeiras</asp:ListItem>
                        <asp:ListItem>Palhada</asp:ListItem>
                        <asp:ListItem>Cabuçu</asp:ListItem>
                        <asp:ListItem>Nova Era</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <asp:Label ID="lblMensagem" runat="server" CssClass="mensagem"></asp:Label>

                <div class="acoes">
                    <asp:Button ID="btnSalvar" runat="server" Text="Salvar Alterações" CssClass="btn" />
                    <a class="sair" href="logout.aspx">Sair</a>
                    <asp:Button ID="btnCertificado" runat="server" Text="Ver Certificado" CssClass="btn-certificado" PostBackUrl="certificado.aspx" />
                </div>
            </form>
        </div>
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

</body>
</html>
