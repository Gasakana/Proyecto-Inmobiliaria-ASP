Public Class BusquedaAvanzada
    Inherits System.Web.UI.Page
    Public Shared array_ID() As String

    Dim Edificio As New CADInmo.CADEdificio
    Dim EdificioNuevo As New CADInmo.CADEdificio


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        RellenarComboBox()

    End Sub

    Private Sub RellenarComboBox()
        'Tipos de via
        cbTipoVia.Items.Add("No seleccionado")
        cbTipoVia.Items.Add("Avenida")
        cbTipoVia.Items.Add("Calle")
        cbTipoVia.Items.Add("Plaza")
        cbTipoVia.Items.Add("Bulevar")
        cbTipoVia.Items.Add("Paseo")
        cbTipoVia.Items.Add("Paseo Maritimo")
        cbTipoVia.Items.Add("Camino")
        cbTipoVia.Items.Add("Carretera")
        cbTipoVia.Items.Add("otro")

        'Num Hab
        cbNumHabs.Items.Add("No seleccionado")
        For hab As Integer = 1 To 10
            cbNumHabs.Items.Add(hab.ToString)
        Next

        'Num Banio
        cbNumBanios.Items.Add("No seleccionado")
        For ban As Integer = 1 To 5
            cbNumBanios.Items.Add(ban.ToString)
        Next

        'Estado
        cbEstado.Items.Add("No seleccionado")
        cbEstado.Items.Add("A reformar")
        cbEstado.Items.Add("Reformado")
        cbEstado.Items.Add("Casi nuevo")
        cbEstado.Items.Add("Muy bien")
        cbEstado.Items.Add("Bien")

        'Tipo de edificacion

        cbTipo.Items.Add("No seleccionado")
        cbTipo.Items.Add("Apartamanto")
        cbTipo.Items.Add("Ático")
        cbTipo.Items.Add("Chalet")
        cbTipo.Items.Add("Dúplex")
        cbTipo.Items.Add("Estudio")
        cbTipo.Items.Add("Piso")
        cbTipo.Items.Add("Planta baja")
    End Sub


    Private Sub Restablecer()
        txtPais.Text = "España"
        txtCalle.Text = ""
        txtCiudad.Text = ""
        txtProvincia.Text = ""

        chbAmueblado.Checked = False
        chbAscensor.Checked = False
        chbTerraza.Checked = False
        chbPiscina.Checked = False
        chbCalefaccion.Checked = False
        chbParking.Checked = False
        chbJardin.Checked = False
        chbTrastero.Checked = False

        cbTipoVia.Items.Clear()
        cbNumHabs.Items.Clear()
        cbNumBanios.Items.Clear()
        cbTipo.Items.Clear()
        cbEstado.Items.Clear()
        RellenarComboBox()

    End Sub

    Protected Sub btnRestablecer_Click(sender As Object, e As EventArgs) Handles btnRestablecer.Click
        Restablecer()
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        Dim esprimera As Boolean = True
        Dim consulta As String = " SELECT * FROM Edificios WHERE"
        If (txtPais.Text <> "") Then
            If (esprimera = True) Then
                consulta = consulta & " pais LIKE '%" & txtPais.Text & "%'"
                esprimera = False
            Else
                consulta = consulta & " AND  pais LIKE '%" & txtPais.Text & "%'"
            End If
        End If

        If (txtCalle.Text <> "") Then
            If (esprimera = True) Then
                consulta = consulta & " nombre_via LIKE '%" & txtCiudad.Text & "%'"
                esprimera = False
            Else
                consulta = consulta & " AND  nombre_via LIKE '%" & txtCiudad.Text & "%'"
            End If
        End If

        If (txtCiudad.Text <> "") Then
            If (esprimera = True) Then
                consulta = consulta & " ciudad LIKE '%" & txtCiudad.Text & "%'"
                esprimera = False
            Else
                consulta = consulta & " AND  ciudad LIKE '%" & txtCiudad.Text & "%'"
            End If
        End If

        If (txtProvincia.Text <> "") Then
            If (esprimera = True) Then
                consulta = consulta & " localidad LIKE '%" & txtProvincia.Text & "%'"
                esprimera = False
            Else
                consulta = consulta & " AND  localidad LIKE '%" & txtProvincia.Text & "%'"
            End If
        End If

        If (chbAmueblado.Checked = True) Then
            If (esprimera = True) Then
                consulta = consulta & " amueblado= 1"
                esprimera = False
            Else
                consulta = consulta & " AND  amueblado= 1"
            End If
        End If

        If (chbAscensor.Checked = True) Then
            If (esprimera = True) Then
                consulta = consulta & " ascensor = 1"
                esprimera = False
            Else
                consulta = consulta & " AND  ascensor = 1"
            End If
        End If

        If (chbTerraza.Checked = True) Then
            If (esprimera = True) Then
                consulta = consulta & " terraza= 1"
                esprimera = False
            Else
                consulta = consulta & " AND  terraza= 1"
            End If
        End If

        If (chbPiscina.Checked = True) Then
            If (esprimera = True) Then
                consulta = consulta & " piscina= 1  "
                esprimera = False
            Else
                consulta = consulta & " AND  piscina= 1"
            End If
        End If

        If (chbJardin.Checked = True) Then
            If (esprimera = True) Then
                consulta = consulta & " jardin = 1  "
                esprimera = False
            Else
                consulta = consulta & " AND  jardin= 1"
            End If
        End If

        If (chbCalefaccion.Checked = True) Then
            If (esprimera = True) Then
                consulta = consulta & " calefaccion = 1  "
                esprimera = False
            Else
                consulta = consulta & " AND  calefaccion= 1"
            End If
        End If

        If (chbTrastero.Checked = True) Then
            If (esprimera = True) Then
                consulta = consulta & " trastero = 1  "
                esprimera = False
            Else
                consulta = consulta & " AND  trastero = 1"
            End If
        End If

        If (chbParking.Checked = True) Then
            If (esprimera = True) Then
                consulta = consulta & " parking = 1  "
                esprimera = False
            Else
                consulta = consulta & " AND  parking = 1"
            End If
        End If


        If (cbEstado.Text <> "No seleccionado") Then
            If (esprimera = True) Then
                consulta = consulta & " estado = '%" & cbEstado.Text & "%'"
                esprimera = False
            Else
                consulta = consulta & " AND estado = '%" & cbEstado.Text & "%'"
            End If
        End If

        If (cbTipo.Text <> "No seleccionado") Then
            If (esprimera = True) Then
                consulta = consulta & " tipo = '%" & cbTipo.Text & "%'"
                esprimera = False
            Else
                consulta = consulta & " AND tipo = '%" & cbTipo.Text & "%'"
            End If
        End If

        If (cbTipoVia.Text <> "No seleccionado") Then
            If (esprimera = True) Then
                consulta = consulta & " tipo_via = '%" & cbTipoVia.Text & "%'"
                esprimera = False
            Else
                consulta = consulta & " AND tipo_via = '%" & cbTipoVia.Text & "%'"
            End If
        End If

        If (cbNumBanios.Text <> "No seleccionado") Then
            If (esprimera = True) Then
                consulta = consulta & " n_banios = " & cbNumBanios.Text & ""
                esprimera = False
            Else
                consulta = consulta & " AND n_banios = " & cbNumBanios.Text & ""
            End If
        End If

        If (cbNumHabs.Text <> "No seleccionado") Then
            If (esprimera = True) Then
                consulta = consulta & " n_habs = " & cbNumHabs.Text & ""
                esprimera = False
            Else
                consulta = consulta & " AND n_habs = " & cbNumHabs.Text & ""
            End If
        End If



        Dim sqlConnection1 As New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=Inmobiliaria;Integrated Security=True")
        Dim cmd As New System.Data.SqlClient.SqlCommand
        Dim reader As System.Data.SqlClient.SqlDataReader

        cmd.CommandText = consulta
        cmd.CommandType = CommandType.Text
        cmd.Connection = sqlConnection1

        sqlConnection1.Open()

        reader = cmd.ExecuteReader()
        ' Data is accessible through the DataReader object here.

        Dim arrayId() As String
        Dim i = 0
        ReDim arrayId(i)
        If reader.HasRows Then
            Do While reader.Read()
                arrayId(i) = reader("id").ToString()
                i = i + 1
                ReDim Preserve arrayId(UBound(arrayId) + 1)
            Loop
        Else
            Console.WriteLine("No rows found.")
        End If

        reader.Close()
        sqlConnection1.Close()

        array_ID = arrayId

        Restablecer()

        Response.Redirect("ResultadoBusqueda.aspx")
    End Sub
End Class