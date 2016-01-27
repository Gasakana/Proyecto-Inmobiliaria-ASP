<%@ Page Title="Iniciar sesión" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Login.aspx.vb" Inherits="Inmobiliaria.Login" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Iniciar sesión
    </h2>
    <p>
        Especifique su nombre de usuario y contraseña.
        <asp:HyperLink ID="RegisterHyperLink" runat="server" EnableViewState="false">Registrese</asp:HyperLink> &nbsp;si no tiene una cuenta.
    </p>
    <asp:Login ID="LoginUser" runat="server" EnableViewState="false" RenderOuterTable="false">
        <LayoutTemplate>
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="LoginUserValidationGroup"/>
            <div class="accountInfo">
                <fieldset class="login">
                    <legend>Información de cuenta</legend>
                    <p>
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" 
                            Font-Bold="True">Nombre de usuario:</asp:Label>
                        <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                             CssClass="failureNotification" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" 
                            Font-Bold="True">Contraseña:</asp:Label>
                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                             CssClass="failureNotification" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:CheckBox ID="RememberMe" runat="server" 
                            ToolTip="No recomendado para ordenadores compartidos"/>
                        <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Recordarme</asp:Label>
                    </p>
                </fieldset>
                <p class="submitButton">
                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" 
                        Text="Iniciar sesión" ValidationGroup="LoginUserValidationGroup" 
                        BackColor="#D9BEB9" BorderColor="#D3CDC7" BorderStyle="Ridge" Font-Bold="False" 
                        Font-Names="Calibri" Font-Size="Medium" Height="34px" Width="148px" CssClass="button"/>
                        <style type="text/css">

                         .button:hover
                         {
                         
                            border: solid 1px grey;
                            font-family: Arial, sans-serif;
                            font-size: 12px;
                            font-weight: bold;
                            color: Maroon;   
                            

                        }</style>
                </p>
            </div>
        </LayoutTemplate>
    </asp:Login>
</asp:Content>