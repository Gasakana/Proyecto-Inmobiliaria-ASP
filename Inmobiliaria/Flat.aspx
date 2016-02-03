<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Flat.aspx.vb" Inherits="Inmobiliaria.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>
            <asp:Label ID="lblFlatName" runat="server"></asp:Label>.
        </h2>
        <div class="info-container">
            <h3><asp:Label ID="Descripcion" runat="server" ></asp:Label></h3>
            <br />
            <div class="image-container">
                <asp:Image CssClass="fotoPiso" ID="imagenPiso" runat="server" />
            </div>
            <div class="details-container">
                <p>Metros cuadrados: <asp:Label ID="NumMetros" runat="server" ></asp:Label></p>
                <p>Número de Habitaciones: <asp:Label ID="NumHab" runat="server" ></asp:Label></p>
                <p>Número de baños: <asp:Label ID="NumBanios" runat="server" ></asp:Label></p>

                <asp:Table ID="TablaDatos" runat="server">
                    <asp:TableRow>
                        <asp:TableCell> lista de items "true" en el registro</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell> lista de items "true" en el registro</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell> lista de items "true" en el registro</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <p>Precio: <asp:Label ID="Price" runat="server" ></asp:Label></p>
            </div>
        </div>
    </div>
</asp:Content>
