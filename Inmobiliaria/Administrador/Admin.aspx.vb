Public Class Admin
    Inherits System.Web.UI.Page

    Dim Edificio As New CADInmo.CADEdificio
    Dim EdificioNuevo As New CADInmo.CADEdificio

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        If txtId.Text = "" Then
            lblMensaje.Text = "Debes introducir el identificador del edificio"
            txtId.Focus()
        ElseIf Not Edificio.ComprobarEdificio(txtId.Text) Then
            lblMensaje.Text = "No se han encontrado resultados del edificio a buscar"
            txtId.Focus()
        Else
            mostrarDatosEdificio()
            lblMensaje.Text = "Datos del Edificio"
        End If
    End Sub

    Private Sub mostrarDatosEdificio()

        Dim miEdificio As New CADInmo.DSInmo.EdificiosDataTable

        miEdificio = Edificio.ObtenerEdificio(txtId.Text)

        For Each Row As DataRow In miEdificio.Rows
            igualarCombos(cbTipoVia, Row("tipo_via").ToString)
            igualarCombos(cbNumHabs, Row("n_habs").ToString)
            igualarCombos(cbNumBanios, Row("n_banios").ToString)
            igualarCombos(cbEstado, Row("estado").ToString)
            igualarCombos(cbTipo, Row("tipo").ToString)
            igualarCombos(cbTipoVia, Row("tipo_via").ToString)
            txtNombreVia.Text = Row("nombre_via").ToString
            txtNumVia.Text = Row("numero_via").ToString
            txtPiso.Text = Row("piso").ToString
            txtLetraPiso.Text = Row("letra_piso").ToString
            txtCP.Text = Row("cp").ToString
            txtPais.Text = Row("pais").ToString
            txtCiudad.Text = Row("ciudad").ToString
            txtLocalidad.Text = Row("localidad").ToString
            txtPrecio.Text = Row("precio").ToString
            chAscensor.Checked = comprobarCheckBox(Row("ascensor"))
            chParking.Checked = comprobarCheckBox(Row("parking"))
            chAmueblado.Checked = comprobarCheckBox(Row("amueblado"))
            chTerraza.Checked = comprobarCheckBox(Row("terraza"))
            chCalefaccion.Checked = comprobarCheckBox(Row("calefaccion"))
            chPiscina.Checked = comprobarCheckBox(Row("piscina"))
            chJardin.Checked = comprobarCheckBox(Row("jardin"))
            chTrastero.Checked = comprobarCheckBox(Row("trastero"))
            txtSuperficie.Text = Row("superficie").ToString
        Next
    End Sub

    Private Sub igualarCombos(combo As DropDownList, texto As String)
        Dim j As Integer = 0
        For Each item As ListItem In combo.Items
            If item.Text = texto Then
                combo.SelectedIndex = j
            End If
            j = j + 1
        Next
    End Sub

    Private Function comprobarCheckBox(ByVal ch As Integer) As Boolean
        If ch = 1 Then
            Return True
        Else
            Return False
        End If
    End Function

    Private Function insertarChecks(ByVal ch As CheckBox) As Integer
        If ch.Checked Then
            Return 1
        Else
            Return 0
        End If
    End Function

    Protected Sub btnInsertar_Click(sender As Object, e As EventArgs) Handles btnInsertar.Click
        If txtId.Text = "" Then
            lblMensaje.Text = "Debes introducir un ID para el edificio"
            txtId.Focus()
            Exit Sub
        End If
        If Edificio.ComprobarEdificio(txtId.Text) Then
            lblMensaje.Text = "El edificio ya existe"
            txtId.Focus()
            Exit Sub
        End If
        If txtNombreVia.Text = "" Then
            lblMensaje.Text = "Debes introducir el nombre de la vía"
            txtNombreVia.Focus()
            Exit Sub
        End If
        If txtNumVia.Text = "" Then
            lblMensaje.Text = "Debes introducir el número de la vía"
            txtNumVia.Focus()
            Exit Sub
        End If
        If Not IsNumeric(txtNumVia.Text) Then
            lblMensaje.Text = "El campo número de la vía debe ser numérico"
            txtNumVia.Focus()
            Exit Sub     
        End If
        If txtPiso.Text = "" Then
            lblMensaje.Text = "Debes introducir el piso"
            txtPiso.Focus()
            Exit Sub
        End If
        If Not IsNumeric(txtPiso.Text) Then
            lblMensaje.Text = "El campo piso debe ser numérico"
            txtPiso.Focus()
            Exit Sub
        End If
        If txtLetraPiso.Text = "" Then
            lblMensaje.Text = "Debes introducir la letra del piso"
            txtLetraPiso.Focus()
            Exit Sub
        End If
        If txtCP.Text = "" Then
            lblMensaje.Text = "Debes introducir el código postal"
            txtCP.Focus()
            Exit Sub
        End If
        If Not IsNumeric(txtCP.Text) Then
            lblMensaje.Text = "El campo código postal debe ser numérico"
            txtCP.Focus()
            Exit Sub
        End If
        If txtPais.Text = "" Then
            lblMensaje.Text = "Debes introducir el país"
            txtPais.Focus()
            Exit Sub
        End If
        If txtCiudad.Text = "" Then
            lblMensaje.Text = "Debes introducir la ciudad"
            txtCiudad.Focus()
            Exit Sub
        End If
        If txtLocalidad.Text = "" Then
            lblMensaje.Text = "Debes introducir la localidad"
            txtLocalidad.Focus()
            Exit Sub
        End If
        If txtPrecio.Text = "" Then
            lblMensaje.Text = "Debes introducir el precio"
            txtPrecio.Focus()
            Exit Sub
        End If
        If Not IsNumeric(txtPrecio.Text) Then
            lblMensaje.Text = "El campo precio debe ser numérico"
            txtPrecio.Focus()
            Exit Sub
        Else
            If (Convert.ToDouble(txtPrecio.Text) <= 0) Then
                lblMensaje.Text = "El valor del precio debe ser positivo"
                txtPrecio.Focus()
                Exit Sub
            End If
        End If
        If txtSuperficie.Text = "" Then
            lblMensaje.Text = "Debes introducir la superficie"
            txtSuperficie.Focus()
            Exit Sub
        Else
            lblMensaje.Text = EdificioNuevo.NuevoEdificio(Convert.ToInt32(txtId.Text), cbTipoVia.Text, txtNombreVia.Text,
                                                          Convert.ToInt32(txtNumVia.Text), Convert.ToInt32(txtPiso.Text),
                                                          txtLetraPiso.Text, Convert.ToInt32(txtCP.Text), txtPais.Text,
                                                          txtCiudad.Text, txtLocalidad.Text, Convert.ToDecimal(txtPrecio.Text),
                                                          Convert.ToInt32(cbNumHabs.Text), Convert.ToInt32(cbNumBanios.Text),
                                                          txtSuperficie.Text, insertarChecks(chAscensor), insertarChecks(chParking),
                                                          insertarChecks(chAmueblado), insertarChecks(chTerraza), insertarChecks(chCalefaccion),
                                                          insertarChecks(chPiscina), insertarChecks(chJardin), insertarChecks(chTrastero),
                                                          cbEstado.Text, cbTipo.Text)

            GVEdificios.DataBind()
            limpiarDatos()
            txtId.Focus()
        End If
    End Sub

    Protected Sub btnLimpiar_Click(sender As Object, e As EventArgs) Handles btnLimpiar.Click
        limpiarDatos()
        lblMensaje.Text = ""
    End Sub

    Protected Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        If txtId.Text = "" Then
            lblMensaje.Text = "Debes introducir un ID para el edificio"
            txtId.Focus()
            Exit Sub
        End If
        If Not Edificio.ComprobarEdificio(txtId.Text) Then
            lblMensaje.Text = "El edificio no existe"
            txtId.Focus()
            Exit Sub
        End If
        If txtNombreVia.Text = "" Then
            lblMensaje.Text = "Debes introducir el nombre de la vía"
            txtNombreVia.Focus()
            Exit Sub
        End If
        If txtNumVia.Text = "" Then
            lblMensaje.Text = "Debes introducir el número de la vía"
            txtNumVia.Focus()
            Exit Sub
        End If
        If Not IsNumeric(txtNumVia.Text) Then
            lblMensaje.Text = "El campo número de la vía debe ser numérico"
            txtNumVia.Focus()
            Exit Sub
        End If
        If txtPiso.Text = "" Then
            lblMensaje.Text = "Debes introducir el piso"
            txtPiso.Focus()
            Exit Sub
        End If
        If Not IsNumeric(txtPiso.Text) Then
            lblMensaje.Text = "El campo piso debe ser numérico"
            txtPiso.Focus()
            Exit Sub
        End If
        If txtLetraPiso.Text = "" Then
            lblMensaje.Text = "Debes introducir la letra del piso"
            txtLetraPiso.Focus()
            Exit Sub
        End If
        If txtCP.Text = "" Then
            lblMensaje.Text = "Debes introducir el código postal"
            txtCP.Focus()
            Exit Sub
        End If
        If Not IsNumeric(txtCP.Text) Then
            lblMensaje.Text = "El campo código postal debe ser numérico"
            txtCP.Focus()
            Exit Sub
        End If
        If txtPais.Text = "" Then
            lblMensaje.Text = "Debes introducir el país"
            txtPais.Focus()
            Exit Sub
        End If
        If txtCiudad.Text = "" Then
            lblMensaje.Text = "Debes introducir la ciudad"
            txtCiudad.Focus()
            Exit Sub
        End If
        If txtLocalidad.Text = "" Then
            lblMensaje.Text = "Debes introducir la localidad"
            txtLocalidad.Focus()
            Exit Sub
        End If
        If txtPrecio.Text = "" Then
            lblMensaje.Text = "Debes introducir el precio"
            txtPrecio.Focus()
            Exit Sub
        End If
        If Not IsNumeric(txtPrecio.Text) Then
            lblMensaje.Text = "El campo precio debe ser numérico"
            txtPrecio.Focus()
            Exit Sub
        Else
            If (Convert.ToDouble(txtPrecio.Text) <= 0) Then
                lblMensaje.Text = "El valor del precio debe ser positivo"
                txtPrecio.Focus()
                Exit Sub
            End If
        End If
        If txtSuperficie.Text = "" Then
            lblMensaje.Text = "Debes introducir la superficie"
            txtSuperficie.Focus()
            Exit Sub
        Else
            lblMensaje.Text = EdificioNuevo.ModificarEdificio(cbTipoVia.Text, txtNombreVia.Text,
                                                          Convert.ToInt32(txtNumVia.Text), Convert.ToInt32(txtPiso.Text),
                                                          txtLetraPiso.Text, Convert.ToInt32(txtCP.Text), txtPais.Text,
                                                          txtCiudad.Text, txtLocalidad.Text, Convert.ToDecimal(txtPrecio.Text),
                                                          Convert.ToInt32(cbNumHabs.Text), Convert.ToInt32(cbNumBanios.Text),
                                                          txtSuperficie.Text, insertarChecks(chAscensor), insertarChecks(chParking),
                                                          insertarChecks(chAmueblado), insertarChecks(chTerraza), insertarChecks(chCalefaccion),
                                                          insertarChecks(chPiscina), insertarChecks(chJardin), insertarChecks(chTrastero),
                                                          cbEstado.Text, cbTipo.Text, Convert.ToInt32(txtId.Text))

            GVEdificios.DataBind()
        End If
    End Sub

    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click

        If txtId.Text = "" Then
            lblMensaje.Text = "Debes introducir el identificador de un edificio"
            txtId.Focus()
            Exit Sub
        End If

        If Not Edificio.ComprobarEdificio(txtId.Text) Then
            lblMensaje.Text = "El edificio no existe"
            txtId.Focus()
            Exit Sub
        End If

        lblMensaje.Text = EdificioNuevo.BorrarCliente(txtId.Text)
        GVEdificios.DataBind()
        limpiarDatos()
        txtId.Focus()
    End Sub

    Private Sub limpiarDatos()
        txtId.Text = ""
        cbTipoVia.SelectedIndex = 0
        txtNombreVia.Text = ""
        txtNumVia.Text = ""
        txtPiso.Text = ""
        txtLetraPiso.Text = ""
        txtCP.Text = ""
        txtPais.Text = ""
        txtCiudad.Text = ""
        txtLocalidad.Text = ""
        txtPrecio.Text = ""
        cbNumHabs.SelectedIndex = 0
        cbNumBanios.SelectedIndex = 0
        txtSuperficie.Text = ""
        chAscensor.Checked = False
        chParking.Checked = False
        chAmueblado.Checked = False
        chTerraza.Checked = False
        chCalefaccion.Checked = False
        chPiscina.Checked = False
        chJardin.Checked = False
        chTrastero.Checked = False
        cbEstado.SelectedIndex = 0
        cbTipo.SelectedIndex = 0
        txtId.Focus()
    End Sub
End Class