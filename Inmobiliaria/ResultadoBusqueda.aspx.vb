Public Class ResultadoBúsqueda
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ArrayIds() As String
        ArrayIds = BusquedaAvanzada.array_ID

         Dim Edificio As New CADInmo.CADEdificio
        If ArrayIds(0) <> Nothing Then
            For i = 0 To ArrayIds.Length - 1

                Dim miEdificio As New CADInmo.DSInmo.EdificiosDataTable
                miEdificio = Edificio.ObtenerEdificio(ArrayIds(i))
                For Each Row As DataRow In miEdificio.Rows

                    ''div
                    '    Dentro: foto, descripcion (flat-> descripcion), precio, m2, nba,nhab, Enlace a Flat.
                    lblTxt.Text = lblTxt.Text.ToString & "<h1>" & Row("tipo_via").ToString & "\" & Row("nombre_via").ToString & ", Nº" & Row("numero_via").ToString & ", Piso: " & Row("piso").ToString & ", " & Row("letra_piso").ToString & ".</h1><div class='contenedor'></br><div class='a'><img src='/imag/estepona-.jpg' class='flat-image' /></div><div class='b'>Ciudad: " & Row("ciudad").ToString & "</br>" &
                          Row("tipo_via").ToString & " " & Row("nombre_via").ToString & "</br> Número: " & Row("numero_via").ToString & "</br>" &
                          "<a href= /Flat.aspx?id=" & Row("id").ToString &
                          ">Más información</a></div></div></br>"
                Next
            Next
        Else
            lblTxt.Text = lblTxt.Text.ToString & "<h1>No se ha encontrado resultados en la búsqueda</h1><br/><a href ='/BusquedaAvanzada.aspx'>Volver a buscar</a>"
        End If
    End Sub

End Class