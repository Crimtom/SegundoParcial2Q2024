<%@ Page Language="C#" MasterPageFile="Pagina.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="SegundoParcial2Q2024.Capa_Vistas.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../CSS/StyleInicio.css" rel="stylesheet" />
    <h1>Inicio </h1>
    <div>
        <h2>Bienvenido a la Página de Elecciones</h2>
        <section>
            
            <asp:Image ID="Ima_bienvenida" runat="server" Height="548px" Width="100%" ImageUrl="~/Capa_Vistas/democracia.png" />
            
        </section>
    </div>
</asp:Content>
