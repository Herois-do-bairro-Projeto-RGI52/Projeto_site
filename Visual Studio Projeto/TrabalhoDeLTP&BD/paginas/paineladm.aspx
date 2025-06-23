<%@ Page Language="VB" AutoEventWireup="false" CodeFile="paineladm.aspx.vb" Inherits="paineladm" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="UTF-8">
    <title>Painel Administrativo</title>
    <link rel="stylesheet" href="../estilo/paineladm.css" />
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
                    <li><a href="paineladm.aspx">Painel ADM</a></li>
                    <li><a href="logout.aspx">Sair</a></li>
                </ul>
            </nav>
        </header>

        <div class="painel-container">
            <h2>Painel Administrativo</h2>


            <h3>Gerenciar Usuários</h3>
            <asp:Repeater ID="rptUsuarios" runat="server">
                <ItemTemplate>
                    <div class="card">
                        <p><strong>ID:</strong> <%# Eval("ID_USUARIO") %></p>
                        <p><strong>Nome:</strong> 
                            <asp:TextBox ID="txtNome" runat="server" Text='<%# Eval("NOME") %>' /></p>
                        <p><strong>Email:</strong> 
                            <asp:TextBox ID="txtEmail" runat="server" Text='<%# Eval("EMAIL") %>' /></p>

                        <asp:Button ID="btnEditar" runat="server" Text="Salvar" CommandName="EditarUsuario" CommandArgument='<%# Eval("ID_USUARIO") %>' CssClass="btn-editar" />
                        <asp:Button ID="btnExcluir" runat="server" Text="Excluir" CommandName="ExcluirUsuario" CommandArgument='<%# Eval("ID_USUARIO") %>' CssClass="btn-excluir" />
                    </div>
                </ItemTemplate>
            </asp:Repeater>


            <h3>Gerenciar Denúncias</h3>
            <asp:Repeater ID="rptDenuncias" runat="server">
                <ItemTemplate>
                    <div class="card">
                        <p><strong>ID:</strong> <%# Eval("ID_DENUNCIA") %></p>
                        <p><strong>Título:</strong> 
                            <asp:TextBox ID="txtTitulo" runat="server" Text='<%# Eval("TITULO") %>' /></p>
                        <p><strong>Categoria:</strong> 
                            <asp:TextBox ID="txtCategoria" runat="server" Text='<%# Eval("CATEGORIA") %>' /></p>
                        <p><strong>Bairro:</strong> 
                            <asp:TextBox ID="txtBairro" runat="server" Text='<%# Eval("BAIRRO") %>' /></p>

                        <asp:Button ID="btnEditar" runat="server" Text="Salvar" CommandName="EditarDenuncia" CommandArgument='<%# Eval("ID_DENUNCIA") %>' CssClass="btn-editar" />
                        <asp:Button ID="btnExcluir" runat="server" Text="Excluir" CommandName="ExcluirDenuncia" CommandArgument='<%# Eval("ID_DENUNCIA") %>' CssClass="btn-excluir" />
                    </div>
                </ItemTemplate>
            </asp:Repeater>


            <h3>Gerenciar Mensagens</h3>
            <asp:Repeater ID="rptMensagens" runat="server">
                <ItemTemplate>
                    <div class="card">
                        <p><strong>ID:</strong> <%# Eval("ID_MENSAGEM") %></p>
                        <p><strong>Nome:</strong> 
                            <asp:TextBox ID="txtNome" runat="server" Text='<%# Eval("NOME") %>' /></p>
                        <p><strong>Email:</strong> 
                            <asp:TextBox ID="txtEmail" runat="server" Text='<%# Eval("EMAIL") %>' /></p>
                        <p><strong>Assunto:</strong> 
                            <asp:TextBox ID="txtAssunto" runat="server" Text='<%# Eval("ASSUNTO") %>' /></p>
                        <p><strong>Mensagem:</strong> 
                            <asp:TextBox ID="txtMensagem" runat="server" Text='<%# Eval("MENSAGEM") %>' /></p>

                        <asp:Button ID="btnEditar" runat="server" Text="Salvar" CommandName="EditarMensagem" CommandArgument='<%# Eval("ID_MENSAGEM") %>' CssClass="btn-editar" />
                        <asp:Button ID="btnExcluir" runat="server" Text="Excluir" CommandName="ExcluirMensagem" CommandArgument='<%# Eval("ID_MENSAGEM") %>' CssClass="btn-excluir" />
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
