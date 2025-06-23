<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Principal</title>
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
                    <li><a href="sobre.aspx">Sobre</a></li>
                    <li><a href="usuario.aspx">Usuário</a></li>
                    <li><a href="contato.aspx">Contato</a></li>
                    <li><a href="ranking.aspx">ranking</a></li>
                    <li><a href="problemas.aspx">Problemas</a></li>
                </ul>
            </nav>
        </header>

        <div class="imagem">
            <img src="../imagens/imagem.png" alt="imagem" />
        </div>

        <h2> Junte-se aos Heróis do Bairro</h2>
        <section class="quadrados-container">
            <div class="quadrado">
                <img src="../imagens/imagem1.png" alt="Imagem 1" />
                <h3>Denuncie um Problema</h3>
                <p>Buracos, lixo, falta de iluminação ou qualquer outro problema — denuncie aqui e ajude sua comunidade a melhorar.</p>
            </div>
            <div class="quadrado">
                <img src="../imagens/imagem2.png" alt="Imagem 2" />
                <h3>Acompanhe as Ações </h3>
                <p>Acompanhe o andamento das denúncias feitas por você e por outros moradores. Transparência e ação lado a lado.</p>
            </div>
            <div class="quadrado">
                <img src="../imagens/imagem3.png" alt="Imagem 3" />
                <h3>Heróis em Ação</h3>
                <p>Veja histórias inspiradoras de moradores que contribuíram para transformar o bairro com pequenas atitudes.</p>
            </div>
            <div class="quadrado">
                <img src="../imagens/imagem4.png" alt="Imagem 4" />
                <h3>Seja um Herói do Bairro</h3>
                <p>Crie sua conta, envie denúncias, compartilhe ideias e ajude a construir um bairro mais seguro e unido.</p>
            </div>
        </section>

        <div class="linee"></div>

        <div class="form-wrapper">
            <div class="form-box">
                <h2>Denuncie um problema</h2>

                <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="form-select" Required="true">
                    <asp:ListItem Value="" Text="Selecione uma categoria" />
                    <asp:ListItem>Iluminação pública</asp:ListItem>
                    <asp:ListItem>Buraco na rua</asp:ListItem>
                    <asp:ListItem>Acúmulo de lixo</asp:ListItem>
                    <asp:ListItem>Esgoto a céu aberto</asp:ListItem>
                    <asp:ListItem>Falta de segurança</asp:ListItem>
                    <asp:ListItem>Outro</asp:ListItem>
                </asp:DropDownList>

                <asp:DropDownList ID="ddlBairro" runat="server" CssClass="form-select" Required="true">
                    <asp:ListItem Value="" Text="Selecione o bairro" />
                    <asp:ListItem>Valverde</asp:ListItem>
                    <asp:ListItem>Jardim Laranjeiras</asp:ListItem>
                    <asp:ListItem>Palhada</asp:ListItem>
                    <asp:ListItem>Cabuçu</asp:ListItem>
                    <asp:ListItem>Nova Era</asp:ListItem>
                </asp:DropDownList>

                <asp:TextBox ID="txtTitulo" runat="server" CssClass="form-input" placeholder="Título da denúncia" />
                <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-input" placeholder="Descreva o problema com detalhes..." />
                <asp:FileUpload ID="fileFoto" runat="server" />
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar denúncia" CssClass="btn-submit" OnClick="btnEnviar_Click" />
                <asp:Label ID="lblMensagem" runat="server" CssClass="mensagem-erro"></asp:Label>
            </div>
            <div class="line"></div>
            <div class="form-cta">
                <h3>Você pode fazer a diferença</h3>
                <p>Com apenas uma denúncia, você ajuda sua comunidade a resolver problemas importantes de forma mais rápida e eficiente.</p>
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
    </form>
</body>
</html>