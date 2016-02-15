<%@ Page Title="Acerca de nosotros" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="About.aspx.vb" Inherits="Inmobiliaria.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 648px;
            height: 320px;
        }
        .style2
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Acerca de
        nosotros</h2>
    <p class="style2">
        Esta WebSite ha sido creada para cubrir la necesidad de un grupo de estudiantes, 
        para buscar pisos durante su etapa como universitarios.<br />
        Esta WebSite intenta recabar la mayor oferta de inmuebles posibles, bajo unos 
        criterios de calidad exigentes, como los que dichos estudiantes<br />
        tenían en esa época.</p>
    <p style = "text-align:center">
        <br />
&nbsp;<img alt="" class="style1" src="imag/equipo-de-trabajo.png" /></p>
</asp:Content>
