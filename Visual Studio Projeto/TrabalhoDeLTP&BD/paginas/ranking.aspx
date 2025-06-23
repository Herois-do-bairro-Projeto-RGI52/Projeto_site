<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ranking.aspx.vb" Inherits="ranking" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Ranking de Denúncias</title>
    <link rel="stylesheet" href="../estilo/ranking.css" />
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
                <li><a href="ranking.aspx">Ranking</a></li>
                <li><a href="logout.aspx">Sair</a></li>
            </ul>
        </nav>
    </header>

    <form id="form1" runat="server">
        <div class="ranking">
            <div class="container-ranking">
                <h2>Ranking dos Usuários que Mais Realizaram Denúncias</h2>

                <div class="lista-ranking">
                    <asp:Repeater ID="rptRanking" runat="server">
                        <ItemTemplate>
                            <div class="usuario-ranking">
                                <div class="posicao"><%# Container.ItemIndex + 1 %>º</div>
                                <img src="../imagens/logo-user.png" alt="Ícone usuário" />
                                <div class="nome"><%# Eval("NOME") %></div>
                                <div class="quantidade"><strong><%# Eval("TotalDenuncias") %></strong> denúncias</div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
    </form>
                <asp:Label ID="lblMensagem" runat="server" CssClass="mensagem"></asp:Label>
