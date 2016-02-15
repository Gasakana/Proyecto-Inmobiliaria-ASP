
Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim datosPiso As New CADInmo.CADEdificio

    Dim i As Boolean = False

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim idUrl As Integer = Request.QueryString("id")
        If idUrl <> 0 Then
            mostrarDatosEdificio(idUrl)
        End If
    End Sub

    Private Sub cargarLabel(dato As String, valor As String)
        If dato = "1" Then
            Dim roww As New TableRow
            TablaDatos.Rows.Add(roww)
            Dim cell As New TableCell With {.Text = valor}
            roww.Cells.Add(cell)
            i = True
        End If
    End Sub

    Private Sub mostrarDatosEdificio(idUrl As Integer)

        Dim miEdificio As New CADInmo.DSInmo.EdificiosDataTable

        miEdificio = datosPiso.ObtenerEdificio(idUrl)

        For Each Row As DataRow In miEdificio.Rows
            lblFlatName.Text() = " " & Row("tipo_via").ToString & "\" & Row("nombre_via").ToString & ", Nº" & Row("numero_via").ToString & ", Piso: " & Row("piso").ToString & ", " & Row("letra_piso").ToString & "."
            Descripcion.Text() = lblFlatName.Text() & " " & Row("cp").ToString & ", " & Row("pais").ToString & " , " & Row("pais").ToString & " "
            NumMetros.Text() = Row("superficie").ToString & "m<sup>2</sup>"
            NumHab.Text() = Row("n_habs").ToString
            NumBanios.Text() = Row("n_banios").ToString

            cargarLabel(Row("ascensor").ToString, "Ascensor")
            cargarLabel(Row("parking").ToString, "Parking")
            cargarLabel(Row("amueblado").ToString, "Amueblado")
            cargarLabel(Row("terraza").ToString, "Terraza")
            cargarLabel(Row("calefaccion").ToString, "Calefacción")
            cargarLabel(Row("piscina").ToString, "Piscina")
            cargarLabel(Row("jardin").ToString, "Jardín")
            cargarLabel(Row("trastero").ToString, "Trastero")

            If i = True Then
                incluye.Text = "Características adicionales:"
            End If
            
            Price.Text() = Row("precio").ToString & " €"
            imagenPiso.ImageUrl() = "/imag/Pisos-para-cocinas.jpg" 'la url con / obligatoriamente


        Next
    End Sub

End Class