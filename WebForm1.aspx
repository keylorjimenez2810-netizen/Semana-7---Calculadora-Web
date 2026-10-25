<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Calculadora</title>
    <style type="text/css">
        #form1 {
            height: 499px;
        }
    </style>
</head>
<body style="height: 507px">
    <form id="form1" runat="server">
        <div>
            <h1>Calculadora Web</h1>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Número 1:"></asp:Label>
        <asp:TextBox ID="tnum1" runat="server" style="margin-left: 11px"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Número 2:"></asp:Label>
            <asp:TextBox ID="tnum2" runat="server" style="margin-left: 11px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Resultado:"></asp:Label>
&nbsp;
            <asp:Label ID="LResultado" runat="server" Text="0"></asp:Label>
        </p>
        <asp:Button ID="BAceptar" runat="server" OnClick="BAceptar_Click" Text="Aceptar" />
        <p>
            <asp:DropDownList ID="doperaciones" runat="server">
                <asp:ListItem>Suma</asp:ListItem>
                <asp:ListItem>Resta</asp:ListItem>
                <asp:ListItem>Multiplicación</asp:ListItem>
                <asp:ListItem>División</asp:ListItem>
                <asp:ListItem>Potencia 2</asp:ListItem>
                <asp:ListItem>Exp</asp:ListItem>
                <asp:ListItem>10x</asp:ListItem>
            </asp:DropDownList>
        </p>
    </form>
</body>
</html>
