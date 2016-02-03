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
                <asp:DropDownList ID="cbTipoVia" runat="server" Height="16px" Width="129px"  
                    DataSourceID="EdificiosDataSource" DataTextField="tipo_via" DataValueField="id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="EdificiosDataSource" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:InmobiliariaConnectionString %>" 
                    SelectCommand="SELECT [id], [tipo_via], [nombre_via], [numero_via], [piso], [letra_piso], [cp], [pais], [ciudad], [localidad], [precio], [n_habs], [n_banios], [superficie], [ascensor], [parking], [amueblado], [terraza], [calefaccion], [piscina], [jardin], [trastero], [estado], [tipo] FROM [Edificios]">
                </asp:SqlDataSource>
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
                <asp:DropDownList ID="cbNumHabs" runat="server" Height="19px" Width="127px" 
                    DataSourceID="EdificiosDataSource" DataTextField="n_habs" DataValueField="id">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Número de baños:</td>
            <td>
                <asp:DropDownList ID="cbNumBanios" runat="server" Width="127px" 
                    DataSourceID="EdificiosDataSource" DataTextField="n_banios" DataValueField="id">
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
                <asp:DropDownList ID="cbEstado" runat="server" Width="127px" 
                    DataSourceID="EdificiosDataSource" DataTextField="estado" DataValueField="id">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Tipo:</td>
            <td>
                <asp:DropDownList ID="cbTipo" runat="server" Width="127px" 
                    DataSourceID="EdificiosDataSource" DataTextField="tipo" DataValueField="id">
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
    <asp:GridView ID="GVEdificios" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="EdificiosDataSource">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="tipo_via" HeaderText="tipo_via" 
                SortExpression="tipo_via" />
            <asp:BoundField DataField="nombre_via" HeaderText="nombre_via" 
                SortExpression="nombre_via" />
            <asp:BoundField DataField="numero_via" HeaderText="numero_via" 
                SortExpression="numero_via" />
            <asp:BoundField DataField="piso" HeaderText="piso" SortExpression="piso" />
            <asp:BoundField DataField="letra_piso" HeaderText="letra_piso" 
                SortExpression="letra_piso" />
            <asp:BoundField DataField="cp" HeaderText="cp" SortExpression="cp" />
            <asp:BoundField DataField="pais" HeaderText="pais" SortExpression="pais" />
            <asp:BoundField DataField="ciudad" HeaderText="ciudad" 
                SortExpression="ciudad" />
            <asp:BoundField DataField="localidad" HeaderText="localidad" 
                SortExpression="localidad" />
            <asp:BoundField DataField="precio" HeaderText="precio" 
                SortExpression="precio" />
            <asp:BoundField DataField="n_habs" HeaderText="n_habs" 
                SortExpression="n_habs" />
            <asp:BoundField DataField="n_banios" HeaderText="n_banios" 
                SortExpression="n_banios" />
            <asp:BoundField DataField="superficie" HeaderText="superficie" 
                SortExpression="superficie" />
            <asp:CheckBoxField DataField="ascensor" HeaderText="ascensor" 
                SortExpression="ascensor" />
            <asp:CheckBoxField DataField="parking" HeaderText="parking" 
                SortExpression="parking" />
            <asp:CheckBoxField DataField="amueblado" HeaderText="amueblado" 
                SortExpression="amueblado" />
            <asp:CheckBoxField DataField="terraza" HeaderText="terraza" 
                SortExpression="terraza" />
            <asp:CheckBoxField DataField="calefaccion" HeaderText="calefaccion" 
                SortExpression="calefaccion" />
            <asp:CheckBoxField DataField="piscina" HeaderText="piscina" 
                SortExpression="piscina" />
            <asp:CheckBoxField DataField="jardin" HeaderText="jardin" 
                SortExpression="jardin" />
            <asp:CheckBoxField DataField="trastero" HeaderText="trastero" 
                SortExpression="trastero" />
            <asp:BoundField DataField="estado" HeaderText="estado" 
                SortExpression="estado" />
            <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
        </Columns>
    </asp:GridView>
    <br />
    
    <asp:LoginName ID="LoginName1" runat="server" />
</asp:Content>