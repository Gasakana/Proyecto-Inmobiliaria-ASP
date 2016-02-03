
Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim datosPiso As CADInmo.CADEdificio

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim idUrl As Integer = Convert.ToInt32(Page.RouteData.Values("id"))
        mostrarDatosEdificio()
        'lblFlatName.Text() = idUrl




    End Sub

    Private Sub mostrarDatosEdificio()

        Dim miEdificio As New CADInmo.DSInmo.EdificiosDataTable

        miEdificio = datosPiso.ObtenerEdificio("1")

        For Each Row As DataRow In miEdificio.Rows
            lblFlatName.Text() = " " & Row("tipo_via").ToString & "\" & Row("nombre_via").ToString & ", " & Row("numero_via").ToString & ", " & Row("piso").ToString & ", " & Row("letra_piso").ToString & "."
            Descripcion.Text() = lblFlatName.Text() & " " & Row("cp").ToString & ", " & Row("pais").ToString & " , " & Row("pais").ToString & " "
            NumMetros.Text() = Row("superficie").ToString
            NumHab.Text() = Row("n_habs").ToString
            NumBanios.Text() = Row("n_habs").ToString
            Price.Text() = Row("precio").ToString & " €"
            imagenPiso.ImageUrl() = "/imag/Pisos-para-cocinas.jpg" 'la url con / obligatoriamente


        Next
    End Sub

End Class