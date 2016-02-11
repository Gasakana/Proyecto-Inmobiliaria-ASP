'------------------------------------------------------------------------------
' <generado automáticamente>
'     Este código fue generado por una herramienta.
'
'     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
'     se vuelve a generar el código. 
' </generado automáticamente>
'------------------------------------------------------------------------------

Option Strict On
Option Explicit On


Partial Public Class BusquedaAvanzada

    '''<summary>
    '''Control EdificiosDataSource.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents EdificiosDataSource As Global.System.Web.UI.WebControls.SqlDataSource

    '''<summary>
    '''Control txtPais.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents txtPais As Global.System.Web.UI.WebControls.TextBox

    '''<summary>
    '''Control txtProvincia.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents txtProvincia As Global.System.Web.UI.WebControls.TextBox

    '''<summary>
    '''Control txtCiudad.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents txtCiudad As Global.System.Web.UI.WebControls.TextBox

    '''<summary>
    '''Control txtCalle.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents txtCalle As Global.System.Web.UI.WebControls.TextBox

    '''<summary>
    '''Control cbTipoVia.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents cbTipoVia As Global.System.Web.UI.WebControls.DropDownList

    '''<summary>
    '''Control cbEstado.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents cbEstado As Global.System.Web.UI.WebControls.DropDownList

    '''<summary>
    '''Control cbTipo.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents cbTipo As Global.System.Web.UI.WebControls.DropDownList

    '''<summary>
    '''Control cbNumHabs.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents cbNumHabs As Global.System.Web.UI.WebControls.DropDownList

    '''<summary>
    '''Control cbNumBanios.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents cbNumBanios As Global.System.Web.UI.WebControls.DropDownList

    '''<summary>
    '''Control chbAscensor.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents chbAscensor As Global.System.Web.UI.WebControls.CheckBox

    '''<summary>
    '''Control chbPiscina.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents chbPiscina As Global.System.Web.UI.WebControls.CheckBox

    '''<summary>
    '''Control chbTerraza.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents chbTerraza As Global.System.Web.UI.WebControls.CheckBox

    '''<summary>
    '''Control chbParking.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents chbParking As Global.System.Web.UI.WebControls.CheckBox

    '''<summary>
    '''Control chbCalefaccion.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents chbCalefaccion As Global.System.Web.UI.WebControls.CheckBox

    '''<summary>
    '''Control chbAmueblado.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents chbAmueblado As Global.System.Web.UI.WebControls.CheckBox

    '''<summary>
    '''Control chbJardin.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents chbJardin As Global.System.Web.UI.WebControls.CheckBox

    '''<summary>
    '''Control chbTrastero.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents chbTrastero As Global.System.Web.UI.WebControls.CheckBox

    '''<summary>
    '''Control btnBuscar.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents btnBuscar As Global.System.Web.UI.WebControls.Button

    '''<summary>
    '''Control btnRestablecer.
    '''</summary>
    '''<remarks>
    '''Campo generado automáticamente.
    '''Para modificarlo, mueva la declaración del campo del archivo del diseñador al archivo de código subyacente.
    '''</remarks>
    Protected WithEvents btnRestablecer As Global.System.Web.UI.WebControls.Button
End Class
