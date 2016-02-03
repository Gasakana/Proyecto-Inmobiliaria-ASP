<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Admin.aspx.vb" Inherits="Inmobiliaria.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 147px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Edificios<br />
    </h2>
    <table class="style1">
        <tr>
            <td class="style2">
                Id:</td>
            <td>
                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Tipo de vía:&nbsp;</td>
            <td>
                <asp:DropDownList ID="cbTipoVia" runat="server" Height="16px" Width="129px" AutoPostBack="true" OnSelectedIndexChanged="cbTipoVia_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Nombre de la vía:</td>
            <td>
                <asp:TextBox ID="txtNombreVia" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Número de la vía:</td>
            <td>
                <asp:TextBox ID="txtNumVia" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Piso:</td>
            <td>
                <asp:TextBox ID="txtPiso" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Letra del piso:</td>
            <td>
                <asp:TextBox ID="txtLetraPiso" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Código postal:</td>
            <td>
                <asp:TextBox ID="txtCP" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                País:</td>
            <td>
                <asp:TextBox ID="txtPais" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Ciudad:</td>
            <td>
                <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Localidad:</td>
            <td>
                <asp:TextBox ID="txtLocalidad" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Precio:</td>
            <td>
                <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Número de habitaciones:</td>
            <td>
                <asp:DropDownList ID="cbNumHabs" runat="server" Height="19px" Width="127px" AutoPostBack="true" OnSelectedIndexChanged="cbNumHabs_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Número de baños:</td>
            <td>
                <asp:DropDownList ID="cbNumBanios" runat="server" Width="127px" AutoPostBack="true" OnSelectedIndexChanged="cbNumBanios_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Superficie:</td>
            <td>
                <asp:TextBox ID="txtSuperficie" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Ascensor:</td>
            <td>
                <asp:CheckBox ID="chAscensor" runat="server" AutoPostBack="true" Checked='<%# Eval("ascensor") %>' Width="127px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Parking:</td>
            <td>
                <asp:CheckBox ID="chParking" runat="server" AutoPostBack="true" Checked='<%# Eval("parking") %>' Width="127px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Amueblado:</td>
            <td>
                <asp:CheckBox ID="chAmueblado" runat="server" Checked='<%# Eval("amueblado") %>' Width="127px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Terraza:</td>
            <td>
                <asp:CheckBox ID="chTerraza" runat="server" Checked='<%# Eval("terraza") %>' Width="127px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Calefacción:</td>
            <td>
                <asp:CheckBox ID="chCalefaccion" runat="server" Checked='<%# Eval("calefaccion") %>' Width="127px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Piscina:</td>
            <td>
                <asp:CheckBox ID="chPiscina" runat="server" Checked='<%# Eval("piscina") %>' Width="127px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Jardín:</td>
            <td>
                <asp:CheckBox ID="chJardin" runat="server" Checked='<%# Eval("jardin") %>' Width="127px"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Trastero:</td>
            <td>
                <asp:CheckBox ID="chTrastero" runat="server" Checked='<%# Eval("trastero") %>' Width="127px"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Estado:</td>
            <td>
                <asp:DropDownList ID="cbEstado" runat="server" Width="127px" AutoPostBack="true" OnSelectedIndexChanged="cbTipo_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Tipo:</td>
            <td>
                <asp:DropDownList ID="cbTipo" runat="server" Width="127px" AutoPostBack="true" OnSelectedIndexChanged="cmbNomCli_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:Label ID="lblMensaje" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
&nbsp;<asp:Button ID="btnInsertar" runat="server" Text="Añadir" />
&nbsp;<asp:Button ID="btnModificar" runat="server" Text="Modificar" />
&nbsp;<asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClientClick="return confirm('¿Seguro que quieres borrar el edificio?')" />
&nbsp;<asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" />
    <br />
    <br />
    <asp:GridView ID="GVEdificios" runat="server">
    </asp:GridView>
    <br />
    
    <asp:LoginName ID="LoginName1" runat="server" />
</asp:Content>