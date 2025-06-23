<%@ Page Language="VB" AutoEventWireup="false" CodeFile="cadastro.aspx.vb" Inherits="cadastro" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Área de Cadastro</title>
    <link rel="stylesheet" href="../estilo/cadastrar.css" />
</head>
<body>
    <form id="form1" runat="server" class="form">
        <div class="form-container">
            <h2>Área de cadastro</h2>

            <div class="date-group">
                <asp:DropDownList ID="ddlDia" runat="server" CssClass="form-select">
                    <asp:ListItem Value="" Text="Dia" />
                    <asp:ListItem>01</asp:ListItem><asp:ListItem>02</asp:ListItem><asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem><asp:ListItem>05</asp:ListItem><asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem><asp:ListItem>08</asp:ListItem><asp:ListItem>09</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem><asp:ListItem>11</asp:ListItem><asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem><asp:ListItem>14</asp:ListItem><asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem><asp:ListItem>17</asp:ListItem><asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem><asp:ListItem>20</asp:ListItem><asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem><asp:ListItem>23</asp:ListItem><asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem><asp:ListItem>26</asp:ListItem><asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem><asp:ListItem>29</asp:ListItem><asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>

                <asp:DropDownList ID="ddlMes" runat="server" CssClass="form-select">
                    <asp:ListItem Value="" Text="Mês" />
                    <asp:ListItem>Janeiro</asp:ListItem>
                    <asp:ListItem>Fevereiro</asp:ListItem>
                    <asp:ListItem>Março</asp:ListItem>
                    <asp:ListItem>Abril</asp:ListItem>
                    <asp:ListItem>Maio</asp:ListItem>
                    <asp:ListItem>Junho</asp:ListItem>
                    <asp:ListItem>Julho</asp:ListItem>
                    <asp:ListItem>Agosto</asp:ListItem>
                    <asp:ListItem>Setembro</asp:ListItem>
                    <asp:ListItem>Outubro</asp:ListItem>
                    <asp:ListItem>Novembro</asp:ListItem>
                    <asp:ListItem>Dezembro</asp:ListItem>
                </asp:DropDownList>

                <asp:DropDownList ID="ddlAno" runat="server" CssClass="form-select">
                    <asp:ListItem Value="" Text="Ano" />
                    <asp:ListItem>2025</asp:ListItem><asp:ListItem>2024</asp:ListItem><asp:ListItem>2023</asp:ListItem>
                    <asp:ListItem>2022</asp:ListItem><asp:ListItem>2021</asp:ListItem><asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem><asp:ListItem>2018</asp:ListItem><asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem><asp:ListItem>2015</asp:ListItem><asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem><asp:ListItem>2012</asp:ListItem><asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem><asp:ListItem>2009</asp:ListItem><asp:ListItem>2008</asp:ListItem>
                    <asp:ListItem>2007</asp:ListItem><asp:ListItem>2006</asp:ListItem><asp:ListItem>2005</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem><asp:ListItem>2003</asp:ListItem><asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem><asp:ListItem>2000</asp:ListItem><asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem><asp:ListItem>1997</asp:ListItem><asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem><asp:ListItem>1994</asp:ListItem><asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem><asp:ListItem>1991</asp:ListItem><asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1989</asp:ListItem><asp:ListItem>1988</asp:ListItem><asp:ListItem>1987</asp:ListItem>
                    <asp:ListItem>1986</asp:ListItem><asp:ListItem>1985</asp:ListItem><asp:ListItem>1984</asp:ListItem>
                    <asp:ListItem>1983</asp:ListItem><asp:ListItem>1982</asp:ListItem><asp:ListItem>1981</asp:ListItem>
                    <asp:ListItem>1980</asp:ListItem><asp:ListItem>1979</asp:ListItem><asp:ListItem>1978</asp:ListItem>
                    <asp:ListItem>1977</asp:ListItem><asp:ListItem>1976</asp:ListItem><asp:ListItem>1975</asp:ListItem>
                    <asp:ListItem>1974</asp:ListItem><asp:ListItem>1973</asp:ListItem><asp:ListItem>1972</asp:ListItem>
                    <asp:ListItem>1971</asp:ListItem><asp:ListItem>1970</asp:ListItem><asp:ListItem>1969</asp:ListItem>
                    <asp:ListItem>1968</asp:ListItem><asp:ListItem>1967</asp:ListItem><asp:ListItem>1966</asp:ListItem>
                    <asp:ListItem>1965</asp:ListItem><asp:ListItem>1964</asp:ListItem><asp:ListItem>1963</asp:ListItem>
                    <asp:ListItem>1962</asp:ListItem><asp:ListItem>1961</asp:ListItem><asp:ListItem>1960</asp:ListItem>
                    <asp:ListItem>1959</asp:ListItem><asp:ListItem>1958</asp:ListItem><asp:ListItem>1957</asp:ListItem>
                    <asp:ListItem>1956</asp:ListItem><asp:ListItem>1955</asp:ListItem><asp:ListItem>1954</asp:ListItem>
                    <asp:ListItem>1953</asp:ListItem><asp:ListItem>1952</asp:ListItem><asp:ListItem>1951</asp:ListItem>
                    <asp:ListItem>1950</asp:ListItem>
                </asp:DropDownList>
            </div>

            <asp:TextBox ID="txtNome" runat="server" CssClass="form-input" placeholder="Nome" />
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-input" TextMode="Email" placeholder="Email" />
            <asp:TextBox ID="txtSenha" runat="server" CssClass="form-input" TextMode="Password" placeholder="Senha" />

            <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar-se" CssClass="btn-cadastrar" OnClick="btnCadastrar_Click" />

            <hr>
            Já tem uma conta? Faça o login!
            <asp:Button ID="btnlogin" runat="server" Text="Fazer login" CssClass="btn-login" OnClick="btnlogin_Click" />
            
            <asp:Label ID="lblMensagem" runat="server" CssClass="mensagem-erro"></asp:Label> 
        </div>
    </form>
</body>
</html>
