<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Flat.aspx.vb" Inherits="Inmobiliaria.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>
            <asp:Label ID="lblUsernme" runat="server" Text="Nombre del Piso"></asp:Label>.
        </h2>
        <div class="info-container">
            <h3>Descripcion: 1</h3>
            <br />
            <div>
                <asp:Image CssClass="fotoPiso" ID="imagenPiso" runat="server" src="/imag/Ventajas.jpg"/>
            </div>
        </div>
    </div>
</asp:Content>
