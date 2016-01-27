<%@ Page Title="Página principal" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Default.aspx.vb" Inherits="Inmobiliaria._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Busca, ojea y encuentra tu piso ideal.</h2>
    <div >
        <p>Pisos recomendados para ti:</p>
        <div id="flatContainer" class="table-container">
            <div class="table-row">
                <div class="row-data">
                    <p>
                        <a>
                            <img alt="foro de una casa" src="/imag/estepona-.jpg" class="flat-image"/>
                            <br />Descricion de 1
                        </a>
                    </p
                </div>
                <div class="row-data">
                    <p>
                        <a>
                            <img alt="foro de una casa" src="/imag/Pisos-para-cocinas.jpg" class="flat-image"/>
                            <br />Descricion de 2
                        </a>
                    </p>
                </div>
                <div class="row-data">
                    <p>
                        <a>
                            <img alt="foro de una casa" src="/imag/Ventajas.jpg" class="flat-image"/>
                            <br />Descricion de 3
                        </a>
                    </p>
                </div>
            </div>
            <div class="table-row">
                <div class="row-data">
                   <p>
                        <a>
                            <img alt="foro de una casa" src="/imag/Ventajas.jpg" class="flat-image"/>
                            <br />Descricion de 4
                        </a>
                    </p>
                </div>
                <div class="row-data">
                    <p>
                        <a>
                            <img alt="foro de una casa" src="/imag/estepona-.jpg" class="flat-image"/>
                            <br />Descricion de 5
                        </a>
                    </p>
                </div>
                <div class="row-data">
                    <p>
                        <a>
                            <img alt="foro de una casa" src="/imag/Pisos-para-cocinas.jpg" class="flat-image"/>
                            <br />Descricion de 6
                        </a>
                    </p>
                </div>
            </div>
            <div class="table-row">
                <div class="row-data">
                    <p>
                        <a>
                            <img alt="foro de una casa" src="/imag/Pisos-para-cocinas.jpg" class="flat-image"/>
                            <br />Descricion de 7
                        </a>
                    </p>
                </div>
                <div class="row-data">
                   <p>
                        <a>
                            <img alt="foro de una casa" src="/imag/Ventajas.jpg" class="flat-image"/>
                            <br />Descricion de 8
                        </a>
                    </p>
                </div>
                <div class="row-data">
                    <p>
                        <a>
                            <img alt="foro de una casa" src="/imag/estepona-.jpg" class="flat-image"/>
                            <br />Descricion de 9
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
