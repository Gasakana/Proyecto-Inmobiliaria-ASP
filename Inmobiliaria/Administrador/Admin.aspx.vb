Public Class Admin
    Inherits System.Web.UI.Page

    Dim Edificio As New CADInmo.CADEdificio
    Dim EdificioNuevo As New CADInmo.CADEdificio

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'MsgBox(HttpContext.Current.User.Identity.Name)
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
        End If
        lblMensaje.Text = "Datos del Edificio"
    End Sub

    Private Sub mostrarDatosEdificio()

        Dim miEdificio As New CADInmo.DSInmo.EdificiosDataTable

        miEdificio = Edificio.ObtenerEdificio(txtId.Text)

        For Each Row As DataRow In miEdificio.Rows
            'cbTipoVia.Text = Row("tipo_via").ToString
            txtNombreVia.Text = Row("nombre_via").ToString
            txtNumVia.Text = Row("numero_via").ToString
            txtPiso.Text = Row("piso").ToString
            txtLetraPiso.Text = Row("letra_piso").ToString
            txtCP.Text = Row("cp").ToString
            txtPais.Text = Row("pais").ToString
            txtCiudad.Text = Row("ciudad").ToString
            txtLocalidad.Text = Row("localidad").ToString
            txtPrecio.Text = Row("precio").ToString
            'cbNumHabs.Text = Row("n_habs").ToString
            'cbNumBanios.Text = Row("n_banios").ToString
            txtSuperficie.Text = Row("superficie").ToString

        Next
    End Sub

    Protected Sub cbTipoVia_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cbTipoVia.SelectedIndexChanged
        mostrarDatosEdificio()
    End Sub

    Protected Sub cbNumHabs_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cbNumHabs.SelectedIndexChanged
        mostrarDatosEdificio()
    End Sub

    Protected Sub cbNumBanios_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cbNumBanios.SelectedIndexChanged
        mostrarDatosEdificio()
    End Sub

    Protected Sub cbTipo_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cbEstado.SelectedIndexChanged
        mostrarDatosEdificio()
    End Sub

    Protected Sub cmbNomCli_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cbTipo.SelectedIndexChanged
        mostrarDatosEdificio()
    End Sub

    Protected Sub chAscensor_CheckedChanged(sender As Object, e As EventArgs) Handles chAscensor.CheckedChanged
        mostrarDatosEdificio()
    End Sub

    Protected Sub chParking_CheckedChanged(sender As Object, e As EventArgs) Handles chParking.CheckedChanged
        mostrarDatosEdificio()
    End Sub

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
                                                          txtCiudad.Text, txtLocalidad.Text, Convert.ToInt32(txtPrecio.Text),
                                                          Convert.ToInt32(cbNumHabs.Text), Convert.ToInt32(cbNumBanios.Text),
                                                          txtSuperficie.Text, chAscensor.Checked.ToString, chParking.Checked.ToString,
                                                          chAmueblado.Checked.ToString, chTerraza.Checked.ToString, chCalefaccion.Checked.ToString,
                                                          chPiscina.Checked.ToString, chJardin.Checked.ToString, chTrastero.Checked.ToString,
                                                          cbEstado.Text, cbTipo.Text)

            GVEdificios.DataBind()
        End If
    End Sub

    Protected Sub btnLimpiar_Click(sender As Object, e As EventArgs) Handles btnLimpiar.Click
        txtId.Text = ""
        'cbTipoVia
        txtNombreVia.Text = ""
        txtNumVia.Text = ""
        txtPiso.Text = ""
        txtLetraPiso.Text = ""
        txtCP.Text = ""
        txtPais.Text = ""
        txtCiudad.Text = ""
        txtLocalidad.Text = ""
        txtPrecio.Text = ""
        'cbNumHabs
        'cbNumBanios
        txtSuperficie.Text = ""
        chAscensor.Checked = False
        chParking.Checked = False
        chAmueblado.Checked = False
        chTerraza.Checked = False
        chCalefaccion.Checked = False
        chPiscina.Checked = False
        chJardin.Checked = False
        chTrastero.Checked = False
        'cbEstado
        'cbTipo
        txtId.Focus()
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
                                                          txtCiudad.Text, txtLocalidad.Text, Convert.ToInt32(txtPrecio.Text),
                                                          Convert.ToInt32(cbNumHabs.Text), Convert.ToInt32(cbNumBanios.Text),
                                                          txtSuperficie.Text, chAscensor.Checked.ToString, chParking.Checked.ToString,
                                                          chAmueblado.Checked.ToString, chTerraza.Checked.ToString, chCalefaccion.Checked.ToString,
                                                          chPiscina.Checked.ToString, chJardin.Checked.ToString, chTrastero.Checked.ToString,
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

        txtId.Text = ""
        'cbTipoVia
        txtNombreVia.Text = ""
        txtNumVia.Text = ""
        txtPiso.Text = ""
        txtLetraPiso.Text = ""
        txtCP.Text = ""
        txtPais.Text = ""
        txtCiudad.Text = ""
        txtLocalidad.Text = ""
        txtPrecio.Text = ""
        'cbNumHabs
        'cbNumBanios
        txtSuperficie.Text = ""
        chAscensor.Checked = False
        chParking.Checked = False
        chAmueblado.Checked = False
        chTerraza.Checked = False
        chCalefaccion.Checked = False
        chPiscina.Checked = False
        chJardin.Checked = False
        chTrastero.Checked = False
        'cbEstado
        'cbTipo
        txtId.Focus()
    End Sub
End Class