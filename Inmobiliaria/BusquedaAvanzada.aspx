<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="BusquedaAvanzada.aspx.vb" Inherits="Inmobiliaria.BusquedaAvanzada" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        #Select1
        {
            width: 154px;
            margin-left: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Encuentra los pisos que se adapten a tus necesidades :</h2>
    <br />
    <div style="height: 678px; width: 1029px; margin-bottom: 44px" >
      <div style="height: 686px; width: 666px; margin-left: 59px">
     
          <asp:SqlDataSource ID="EdificiosDataSource" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:InmobiliariaConnectionString %>" 
                    SelectCommand="SELECT [id], [tipo_via], [nombre_via], [numero_via], [piso], [letra_piso], [cp], [pais], [ciudad], [localidad], [precio], [n_habs], [n_banios], [superficie], [ascensor], [parking], [amueblado], [terraza], [calefaccion], [piscina], [jardin], [trastero], [estado], [tipo] FROM [Edificios]">
                </asp:SqlDataSource>
          País:<br />
        <asp:TextBox ID="txtPais" runat="server" style="margin-top: 10px" Enabled="False">España</asp:TextBox>
        <br />
          <br />
          Provincia:<br />
        <asp:TextBox ID="txtProvincia" runat="server" style="margin-top: 10px"></asp:TextBox>
        <br />
        <br />
          Ciudad:<br />
        <asp:TextBox ID="txtCiudad" runat="server" style="margin-top: 10px"></asp:TextBox>
        <br />
        <br />
          Nombre de la via:<br />
        <asp:TextBox ID="txtCalle" runat="server" style="margin-top: 10px"></asp:TextBox>
          <br />
          <br />
          Tipo de via:<br />
                <asp:DropDownList ID="cbTipoVia" runat="server" Height="16px" 
              Width="129px">
                </asp:DropDownList>
                <br />
          <br />
          Estado:<br />
                <asp:DropDownList ID="cbEstado" runat="server" Width="127px">
                </asp:DropDownList>
            <br />
          <br />
          Tipo de Edificio:<br />
                <asp:DropDownList ID="cbTipo" runat="server" Width="127px">
                </asp:DropDownList>
            <br />
          <br />
          Número de habitaciones:<br />
                <asp:DropDownList ID="cbNumHabs" runat="server" Height="19px" 
              Width="127px">
                </asp:DropDownList>
          <br />
          <br />
          Número de baños:<br />
                <asp:DropDownList ID="cbNumBanios" runat="server" Width="127px">
                </asp:DropDownList>
          <br />
          <br />
          Características adicionales:<br />
          <asp:CheckBox ID="chbAscensor" runat="server" Text="Ascensor" 
              TextAlign="Left" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:CheckBox ID="chbPiscina" runat="server" Text="Piscina" 
              TextAlign="Left" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          <asp:CheckBox ID="chbTerraza" runat="server" Text="Terraza" 
              TextAlign="Left" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:CheckBox ID="chbParking" runat="server" Text="Parking" 
              TextAlign="Left" />
          <br />
          <asp:CheckBox ID="chbCalefaccion" runat="server" Text="Calefacción" 
              TextAlign="Left" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="chbAmueblado" runat="server" Text="Amueblado" 
              TextAlign="Left" />
          <br />
          <asp:CheckBox ID="chbJardin" runat="server" Text="Jardín" TextAlign="Left" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:CheckBox ID="chbTrastero" runat="server" Text="Trastero" 
              TextAlign="Left" />
          <br />
          <br />
      <div style="height: 58px; width: 562px; margin-left: 186px">
       <asp:Button ID="btnBuscar" runat="server" 
              style="position: relative; top: 0px; width: 116px; left: 0px;" 
              Text="Buscar" />
        <asp:Button ID="btnRestablecer" runat="server" 
              style="position: relative; top: 0px; width: 97px; left: 80px;" 
              Text="Restablecer" />
       
               
      </div>
          <br />
          <br />
      </div>

    </div>

</asp:Content>
