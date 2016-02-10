Public Class _Default
    Inherits System.Web.UI.Page

    Dim Edificio As New CADInmo.CADEdificio
    Dim nfilas As String
    Dim array(9) As Integer
    Dim link As String = "/Flat.aspx?id="

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim dt As DataTable = Edificio.ObtenerEdificios()

        For i = 0 To 8
            Dim valorAleatorio As Integer = generarAleatorio()
            array(i) = valorAleatorio

            Select Case i
                Case 0
                    Image1.ImageUrl = "/imag/estepona-.jpg"
                    HyperLink1.Text = dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink1.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                Case 1
                    HyperLink2.Text = dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink2.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                Case 2
                    HyperLink3.Text = dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink3.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                Case 3
                    HyperLink4.Text = dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink4.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                Case 4
                    HyperLink5.Text = dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink5.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                Case 5
                    HyperLink6.Text = dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink6.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                Case 6
                    HyperLink7.Text = dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink7.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                Case 7
                    HyperLink8.Text = dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink8.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                Case 8
                    HyperLink9.Text = dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink9.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
            End Select
        Next
    End Sub

    Private Function generarAleatorio() As Integer
        Randomize()
        ' Genera una valor random entre 1 y N filas.
        Dim valor As Integer = CInt(Int((Edificio.NumFilas * Rnd())))
        Label1.Text = valor
        Return valor
    End Function

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        generarAleatorio()
    End Sub
End Class