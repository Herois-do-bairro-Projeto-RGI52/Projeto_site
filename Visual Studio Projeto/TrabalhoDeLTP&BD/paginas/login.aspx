<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Login</title>
    <link rel="stylesheet" href="../estilo/login.css" />
</head>
<body>

    <form id="form1" runat="server">
        <div class="container">


            <div class="login-left">
                <img src="../imagens/logo.png" alt="Logo" class="logo" />
                <hr class="linha-laranja" />
                <p class="cta-texto">
                    Seja um herói do bairro!  
                    <br />Acesse sua conta para denunciar e transformar sua comunidade.
                </p>
            </div>

            <div class="login-right">
                <div class="form">

                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                    <asp:TextBox ID="txtSenha" runat="server" placeholder="Senha" TextMode="Password"></asp:TextBox>

                    <asp:Button ID="btnEntrar" runat="server" Text="Entrar" CssClass="btn-login" OnClick="btnEntrar_Click" />

                    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar-se" CssClass="btn-cadastrar" OnClick="btnCadastrar_Click" />

                    <asp:Label ID="lblMensagem" runat="server" CssClass="mensagem" ForeColor="Red"></asp:Label>
                </div>
            </div>

        </div>
    </form>

</body>
</html>
