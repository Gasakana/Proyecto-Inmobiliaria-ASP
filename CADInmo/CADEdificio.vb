Imports CADInmo.DSInmoTableAdapters

Public Class CADEdificio

    Private adaptadorEdificio As New EdificiosTableAdapter

    Public Function ObtenerEdificio(ByVal IDEdificio As Integer) As DSInmo.EdificiosDataTable
        Return adaptadorEdificio.GetEdificio(IDEdificio)
    End Function

    Public Function ComprobarEdificio(ByVal IDEdificio As String) As Boolean
        Return (adaptadorEdificio.ExisteEdificio(IDEdificio) = 1)
    End Function

    Public Function NuevoEdificio(ByVal id As Integer, ByVal tipo_via As String, ByVal nombre_via As String,
                                  ByVal num_via As Integer, ByVal piso As Integer, ByVal letra_piso As Char,
                                  ByVal cp As Integer, ByVal pais As String, ByVal ciudad As String,
                                  ByVal localidad As String, ByVal precio As Integer, ByVal n_habs As Integer,
                                  ByVal n_banios As Integer, ByVal superficie As String, ByVal ascensor As Boolean,
                                  ByVal parking As Boolean, ByVal amueblado As Boolean, ByVal terraza As Boolean,
                                  ByVal calefaccion As Boolean, ByVal piscina As Boolean, ByVal jardin As Boolean,
                                  ByVal trastero As Boolean, ByVal estado As String, ByVal tipo As String) As String

        Dim resultado As Integer

        resultado = adaptadorEdificio.Insert(tipo_via, nombre_via, num_via, piso, letra_piso, cp, pais,
                                             ciudad, localidad, precio, n_habs, n_banios, superficie,
                                             ascensor, parking, amueblado, terraza, calefaccion, piscina,
                                             jardin, trastero, estado, tipo)

        If resultado = 0 Then
            Return "No se pudo insertar el registro del edificio"
        Else
            Return "Se ha insertado el registro del edificio correctamente"
        End If

    End Function

    Public Function ModificarEdificio(ByVal tipo_via As String, ByVal nombre_via As String,
                                      ByVal num_via As Integer, ByVal piso As Integer, ByVal letra_piso As Char,
                                      ByVal cp As Integer, ByVal pais As String, ByVal ciudad As String,
                                      ByVal localidad As String, ByVal precio As Integer, ByVal n_habs As Integer,
                                      ByVal n_banios As Integer, ByVal superficie As String, ByVal ascensor As Boolean,
                                      ByVal parking As Boolean, ByVal amueblado As Boolean, ByVal terraza As Boolean,
                                      ByVal calefaccion As Boolean, ByVal piscina As Boolean, ByVal jardin As Boolean,
                                      ByVal trastero As Boolean, ByVal estado As String, ByVal tipo As String,
                                      ByVal id As Integer) As String


        Dim resultado As Integer

        resultado = adaptadorEdificio.ActualizarEdificio(tipo_via, nombre_via, num_via,
                                                         piso, letra_piso, cp, pais, ciudad,
                                                         localidad, precio, n_habs, n_banios,
                                                         superficie, ascensor, parking, amueblado,
                                                         terraza, calefaccion, piscina, jardin,
                                                         trastero, estado, tipo, id)


        If resultado = 0 Then
            Return "No se pudo actualizar el registro del edificio"
        Else
            Return "Registro actualizado correctamente"
        End If
    End Function

    Public Function BorrarCliente(ByVal id As String) As String
        Dim resultado As Integer
        resultado = adaptadorEdificio.EliminarEdificio(id)
        If resultado = 0 Then
            Return "No se pudo borrar el registro del edificio"
        Else
            Return "Registro borrado correctamente"
        End If
    End Function

End Class
