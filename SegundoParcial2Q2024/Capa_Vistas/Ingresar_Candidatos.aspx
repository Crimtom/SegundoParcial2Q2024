<%@ Page Language="C#" MasterPageFile="Pagina.Master" AutoEventWireup="true" CodeBehind="Ingresar_Candidatos.aspx.cs" Inherits="SegundoParcial2Q2024.Capa_Vistas.Ingresar_Candidatos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #Text1 {
            width: 213px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Ingresar Candidato </h1>
    <div>
        <h3>Por favor, ingrese los datos que se le solicitan</h3>
        <br />
        <asp:Label ID="Lnombre" runat="server" Text="Nombre:"></asp:Label> 
        <asp:TextBox ID="TBnombre" runat="server" Width="221px" Height="16px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Lcedula" runat="server" Text="Cédula:"></asp:Label>
        <asp:TextBox ID="TBcedula" runat="server" Width="221px" Height="16px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Lpartido" runat="server" Text="Partido:"></asp:Label>
        <asp:TextBox ID="TBpartido" runat="server" Width="221px"></asp:TextBox>


    </div>
</asp:Content>
