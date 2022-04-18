<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WAUsuario._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Sistema de Incio de Sesion</h1>
        <p class="lead">Aplicativo Web v.1.0 - Tecnologia Microsoft .NET</p>
        <p><a href="https://www.google.com" class="btn btn-primary btn-lg">Visite pagina oficial»</a></p>
        <p>
            <asp:Label ID="lblUsuario" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnCerrarSesion" runat="server" CssClass="btn btn-danger" Text="Cerrar Sesion" OnClick="btnCerrarSesion_Click" />
        </p>
    </div>
    

</asp:Content>
