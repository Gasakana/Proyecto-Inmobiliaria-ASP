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
        .style3
        {
            width: 233px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Administrar edificios<br />
        <br />
    </h2>
    <table class="style1">
        <tr>
            <td class="style2">
                Id:</td>
            <td class="style3">
                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Tipo de vía:&nbsp;</td>
            <td class="style3">
                <asp:DropDownList ID="cbTipoVia" runat="server" Height="16px" Width="154px"  >
                    <asp:ListItem>Avenida</asp:ListItem>
                    <asp:ListItem>Calle</asp:ListItem>
                    <asp:ListItem>Plaza</asp:ListItem>
                    <asp:ListItem>Bulevar</asp:ListItem>
                    <asp:ListItem>Paseo</asp:ListItem>
                    <asp:ListItem>Paseo Marítimo</asp:ListItem>
                    <asp:ListItem>Camino</asp:ListItem>
                    <asp:ListItem>Carretera</asp:ListItem>
                    <asp:ListItem>Otro</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="EdificiosDataSource" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:inmobiliariaConnectionString %>" 
                    SelectCommand="SELECT [id], [tipo_via], [nombre_via], [numero_via], [piso], [letra_piso], [cp], [pais], [ciudad], [localidad], [precio], [n_habs], [n_banios], [superficie], [ascensor], [parking], [amueblado], [terraza], [calefaccion], [piscina], [jardin], [trastero], [estado], [tipo] FROM [Edificios]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Nombre de la vía:</td>
            <td class="style3">
                <asp:TextBox ID="txtNombreVia" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Número de la vía:</td>
            <td class="style3">
                <asp:TextBox ID="txtNumVia" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Piso:</td>
            <td class="style3">
                <asp:TextBox ID="txtPiso" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Letra del piso:</td>
            <td class="style3">
                <asp:TextBox ID="txtLetraPiso" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Código postal:</td>
            <td class="style3">
                <asp:TextBox ID="txtCP" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                País:</td>
            <td class="style3">
                <asp:TextBox ID="txtPais" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Ciudad:</td>
            <td class="style3">
                <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Localidad:</td>
            <td class="style3">
                <asp:TextBox ID="txtLocalidad" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Precio:</td>
            <td class="style3">
                <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Número de habitaciones:</td>
            <td class="style3">
                <asp:DropDownList ID="cbNumHabs" runat="server" Height="19px" Width="154px" >
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Número de baños:</td>
            <td class="style3">
                <asp:DropDownList ID="cbNumBanios" runat="server" Width="153px" >
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Superficie:</td>
            <td class="style3">
                <asp:TextBox ID="txtSuperficie" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Ascensor:</td>
            <td class="style3">
                <asp:CheckBox ID="chAscensor" runat="server" Checked='<%# Eval("ascensor") %>' Width="127px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Parking:</td>
            <td class="style3">
                <asp:CheckBox ID="chParking" runat="server" Checked='<%# Eval("parking") %>' Width="127px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Amueblado:</td>
            <td class="style3">
                <asp:CheckBox ID="chAmueblado" runat="server" Checked='<%# Eval("amueblado") %>' Width="127px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Terraza:</td>
            <td class="style3">
                <asp:CheckBox ID="chTerraza" runat="server" Checked='<%# Eval("terraza") %>' Width="127px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Calefacción:</td>
            <td class="style3">
                <asp:CheckBox ID="chCalefaccion" runat="server" Checked='<%# Eval("calefaccion") %>' Width="127px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Piscina:</td>
            <td class="style3">
                <asp:CheckBox ID="chPiscina" runat="server" Checked='<%# Eval("piscina") %>' Width="127px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Jardín:</td>
            <td class="style3">
                <asp:CheckBox ID="chJardin" runat="server" Checked='<%# Eval("jardin") %>' Width="127px"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Trastero:</td>
            <td class="style3">
                <asp:CheckBox ID="chTrastero" runat="server" Checked='<%# Eval("trastero") %>' Width="127px"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Estado:</td>
            <td class="style3">
                <asp:DropDownList ID="cbEstado" runat="server" Width="154px" >
                    <asp:ListItem>A reformar</asp:ListItem>
                    <asp:ListItem>Reformado</asp:ListItem>
                    <asp:ListItem>Casi nuevo</asp:ListItem>
                    <asp:ListItem>Muy bien</asp:ListItem>
                    <asp:ListItem>Bien</asp:ListItem>
                </asp:DropDownList>

            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Tipo:</td>
            <td class="style3">
                <asp:DropDownList ID="cbTipo" runat="server" Width="154px" >
                    <asp:ListItem>Apartamento</asp:ListItem>
                    <asp:ListItem>Ático</asp:ListItem>
                    <asp:ListItem>Chalet</asp:ListItem>
                    <asp:ListItem>Dúplex</asp:ListItem>
                    <asp:ListItem>Estudio</asp:ListItem>
                    <asp:ListItem>Piso</asp:ListItem>
                    <asp:ListItem>Planta baja</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
&nbsp;<asp:Button ID="btnInsertar" runat="server" Text="Añadir" />
&nbsp;<asp:Button ID="btnModificar" runat="server" Text="Modificar" />
&nbsp;<asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClientClick="return confirm('¿Seguro que quieres borrar el edificio?')" />
&nbsp;<asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" />
    <br />
    <br />
    <div style="font-size: 10px">
    <asp:GridView ID="GVEdificios" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="EdificiosDataSource" CellPadding="2" 
            ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
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
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    </div>
    <br />
    
    </asp:Content>