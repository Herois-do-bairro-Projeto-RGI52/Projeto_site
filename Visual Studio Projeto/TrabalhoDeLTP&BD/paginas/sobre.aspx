<%@ Page Language="VB" AutoEventWireup="false" CodeFile="sobre.aspx.vb" Inherits="sobre" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Sobre - Heróis do Bairro</title>
    <link rel="stylesheet" href="../estilo/sobre.css" />
</head>
<body>

    <div class="barra-topo"></div>

    <header>
        <div class="logo">
            <a href="inicio.aspx"><img src="../imagens/logo.png" alt="Logo do site" /></a>
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

    <main class="pagina-herois">
        <div class="conteudo">
            <h1>Sobre Nós</h1>
            <p class="intro">
                Bem-vindo à plataforma Heróis do Bairro! Nosso objetivo é unir a comunidade para juntos solucionarmos problemas, promovermos melhorias e tornarmos nosso bairro um lugar melhor para todos.
            </p>

            <div class="bloco-texto">
                <h2>Quem Somos</h2>
                <p>
                    Somos uma equipe apaixonada pela comunidade e pela transformação social. Acreditamos no poder da participação cidadã e na importância de cada pessoa como agente de mudança.
                </p>
            </div>

            <div class="bloco-texto">
                <h2>Nossa Missão</h2>
                <ul>
                    <li>Facilitar a comunicação entre cidadãos e autoridades.</li>
                    <li>Promover o engajamento da comunidade.</li>
                    <li>Incentivar a resolução de problemas locais.</li>
                    <li>Fortalecer a cidadania ativa.</li>
                </ul>
            </div>

            <div class="bloco-texto">
                <h2>Como Funciona</h2>
                <p>
                    Por meio da nossa plataforma, qualquer morador pode relatar problemas no bairro, acompanhar os relatos de outros cidadãos e contribuir para melhorias. Cada ação conta pontos para o ranking de agentes de impacto.
                </p>
            </div>
        </div>
    </main>

    <footer class="site-footer">
        <div class="footer-container">
            <div class="footer-coluna">
                <h4>Sobre</h4>
                <ul>
                    <li><a href="sobre.aspx">Quem somos</a></li>
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
            © 2025 Heróis do Bairro. Todos os direitos reservados.
        </div>
    </footer>

</body>
</html>
