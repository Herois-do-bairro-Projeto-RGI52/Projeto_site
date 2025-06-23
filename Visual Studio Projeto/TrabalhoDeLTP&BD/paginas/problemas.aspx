<%@ Page Language="VB" AutoEventWireup="false" CodeFile="problemas.aspx.vb" Inherits="problemas" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Lista de Problemas</title>
    <link rel="stylesheet" href="../estilo/problemas.css" />
</head>
<body>

    <div class="barra-topo"></div>

    <header>
        <div class="logo">
            <img src="../imagens/logo.png" alt="Logo do site">
        </div>
        <nav>
            <ul>
                <li><a href="index.aspx">Início</a></li>
                <li><a href="usuario.aspx">Meu Perfil</a></li>
                <li><a href="problemas.aspx">Problemas</a></li>
                <li><a href="logout.aspx">Sair</a></li>
            </ul>
        </nav>
    </header>

    <form id="form1" runat="server">
        <div class="container">


            <div class="lista-denuncias">
                <h2>Denúncias Registradas</h2>
                <asp:Repeater ID="rptDenuncias" runat="server" OnItemCommand="rptDenuncias_ItemCommand">
                    <ItemTemplate>
                        <div class="item">
                            <div class="resumo">
                                <strong><%# Eval("TITULO") %></strong>
                                <p><strong>Categoria:</strong> <%# Eval("CATEGORIA") %></p>
                                <p><strong>Bairro:</strong> <%# Eval("BAIRRO") %></p>
                                <p><strong>Enviado por:</strong> <%# Eval("NOME") %></p>
                            </div>
                            <asp:Button runat="server" CssClass="btn-detalhes" ID="btnDetalhes" Text="Ver Detalhes"
                                CommandName="VerDetalhes" CommandArgument='<%# Eval("ID_DENUNCIA") %>' />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>


            <div class="detalhes-denuncia" id="painelDetalhe" runat="server" visible="false">
                <h2><asp:Label ID="lblTitulo" runat="server" /></h2>

                <asp:Image ID="imgFoto" runat="server" CssClass="imagem-detalhe" />

                <div class="descricao">
                    <p><strong>Categoria:</strong> <asp:Label ID="lblCategoria" runat="server" /></p>
                    <p><strong>Bairro:</strong> <asp:Label ID="lblBairro" runat="server" /></p>
                    <p><strong>Descrição:</strong> <asp:Label ID="lblDescricao" runat="server" /></p>
                    <p><strong>Enviado por:</strong> <asp:Label ID="lblNomeUsuario" runat="server" /></p>
                </div>
            </div>

        </div>

        <asp:Label ID="lblMensagem" runat="server" CssClass="mensagem" />

    </form>

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
