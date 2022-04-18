<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WAUsuario.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <webopt:bundlereference runat="server" path="~/Content/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <div class="container">
            <h2>Inicio de Sesion</h2>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label><br />
                <asp:TextBox ID="txtUsuario" runat="server" class="form-control" required=""></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label><br />
                <asp:TextBox ID="txtContrasenia" runat="server" TextMode="Password" class="form-control" required=""></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" class="btn btn-primary" />
            </p>
            <p>
                <asp:Label ID="lblRpta" runat="server" Text=""></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
