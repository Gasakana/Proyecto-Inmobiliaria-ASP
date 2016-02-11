Public Class ResultadoBúsqueda
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ArrayIds() As String
        ArrayIds = BusquedaAvanzada.array_ID

         Dim Edificio As New CADInmo.CADEdificio

        For i = 0 To ArrayIds.Length - 1

            Dim miEdificio As New CADInmo.DSInmo.EdificiosDataTable
            miEdificio = Edificio.ObtenerEdificio(ArrayIds(i))
            For Each Row As DataRow In miEdificio.Rows

                ''div
                '    Dentro: foto, descripcion (flat-> descripcion), precio, m2, nba,nhab, Enlace a Flat.
                lblTxt.Text = lblTxt.Text.ToString & "<p>" & "Ciudad: " & Row("ciudad").ToString & "</br>" &
                      "Calle: " & Row("nombre_via").ToString & "</br>" & "Número: " & Row("numero_via").ToString & "</br>" &
                    "</p>"
             

            Next
        Next
    End Sub

End Class