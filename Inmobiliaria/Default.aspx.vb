Public Class _Default
    Inherits System.Web.UI.Page

    Dim Edificio As New CADInmo.CADEdificio
    Dim nfilas As String
    Dim array(8) As Integer
    Dim link As String = "/Flat.aspx?id="

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim dt As DataTable = Edificio.ObtenerEdificios()
        Dim j As Integer = 0

        While j <= 8
            array(j) = -1

            Dim valorAleatorio As Integer = generarAleatorio()

            For Each posicion In array
                If posicion = valorAleatorio Then
                    valorAleatorio = generarAleatorio()
                    Continue While
                End If
            Next

            array(j) = valorAleatorio

            Select Case j
                Case 0
                    HyperLink1.Text = "<img src='/imag/estepona-.jpg' class='flat-image' /> <br/>" & dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink1.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                    j += 1
                Case 1
                    HyperLink2.Text = "<img src='/imag/estepona-.jpg' class='flat-image' /> <br/>" & dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink2.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                    j += 1
                Case 2
                    HyperLink3.Text = "<img src='/imag/estepona-.jpg' class='flat-image' /> <br/>" & dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink3.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                    j += 1
                Case 3
                    HyperLink4.Text = "<img src='/imag/estepona-.jpg' class='flat-image' /> <br/>" & dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink4.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                    j += 1
                Case 4
                    HyperLink5.Text = "<img src='/imag/estepona-.jpg' class='flat-image' /> <br/>" & dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink5.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                    j += 1
                Case 5
                    HyperLink6.Text = "<img src='/imag/estepona-.jpg' class='flat-image' /> <br/>" & dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink6.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                    j += 1
                Case 6
                    HyperLink7.Text = "<img src='/imag/estepona-.jpg' class='flat-image' /> <br/>" & dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink7.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                    j += 1
                Case 7
                    HyperLink8.Text = "<img src='/imag/estepona-.jpg' class='flat-image' /> <br/>" & dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink8.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                    j += 1
                Case 8
                    HyperLink9.Text = "<img src='/imag/estepona-.jpg' class='flat-image' /> <br/>" & dt.Rows(valorAleatorio).Item("nombre_via").ToString
                    HyperLink9.NavigateUrl = link + dt.Rows(valorAleatorio).Item("id").ToString
                    j += 1
            End Select
        End While

    End Sub

    Private Function generarAleatorio() As Integer
        Randomize()
        ' Genera una valor random entre 1 y N filas.
        Dim valor As Integer = CInt(Int((Edificio.NumFilas * Rnd())))
        Return valor
    End Function
End Class