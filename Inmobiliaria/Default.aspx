<%@ Page Title="Página principal" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Default.aspx.vb" Inherits="Inmobiliaria._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Busca, ojea y encuentra tu piso ideal.</h2>
    <div >
        <p>Pisos recomendados para ti:</p>
        <div class="table-container">
            <asp:Table ID="Table1" runat="server" CssClass="table-body">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:HyperLink ID="HyperLink1" runat="server">
                        <asp:Image ID="Image1" runat="server" ImageUrl="/imag/estepona-.jpg" CssClass="flat-image"  />
                        <br />HyperLink
                     </asp:HyperLink>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:HyperLink ID="HyperLink2" runat="server">
                        <asp:Image ID="Image2" runat="server" ImageUrl="/imag/estepona-.jpg" CssClass="flat-image" />
                        <br />HyperLink
                     </asp:HyperLink>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:HyperLink ID="HyperLink3" runat="server">
                        <asp:Image ID="Image3" runat="server" ImageUrl="/imag/estepona-.jpg" CssClass="flat-image" />
                        <br />HyperLink
                     </asp:HyperLink>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:HyperLink ID="HyperLink4" runat="server">
                        <asp:Image ID="Image4" runat="server" ImageUrl="/imag/estepona-.jpg" CssClass="flat-image" />
                        <br />HyperLink
                     </asp:HyperLink>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:HyperLink ID="HyperLink5" runat="server">
                        <asp:Image ID="Image5" runat="server" ImageUrl="/imag/estepona-.jpg" CssClass="flat-image" />
                        <br />HyperLink
                     </asp:HyperLink>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:HyperLink ID="HyperLink6" runat="server">
                        <asp:Image ID="Image6" runat="server" ImageUrl="/imag/estepona-.jpg" CssClass="flat-image" />
                        <br />HyperLink
                     </asp:HyperLink>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:HyperLink ID="HyperLink7" runat="server">
                        <asp:Image ID="Image7" runat="server" ImageUrl="/imag/estepona-.jpg" CssClass="flat-image" />
                        <br />HyperLink
                     </asp:HyperLink>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:HyperLink ID="HyperLink8" runat="server">
                        <asp:Image ID="Image8" runat="server" ImageUrl="/imag/estepona-.jpg" CssClass="flat-image" />
                        <br />HyperLink
                     </asp:HyperLink>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:HyperLink ID="HyperLink9" runat="server">
                        <asp:Image ID="Image9" runat="server" ImageUrl="/imag/estepona-.jpg" CssClass="flat-image" />
                        <br />HyperLink
                     </asp:HyperLink>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        </div>
    </div>

</asp:Content>
