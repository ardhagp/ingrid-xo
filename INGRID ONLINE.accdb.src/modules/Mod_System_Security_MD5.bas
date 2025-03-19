Attribute VB_Name = "Mod_System_Security_MD5"
Option Compare Database
Option Explicit

Public Function MD5(Optional ByVal YourText As String = "") As String
    Dim enc As Object
    Dim bytes() As Byte
    Dim Pos As Long
    Dim outstr As String

    'Please activate features on Control Panel for .NET Framework 3.5 (includes .NET 2.0 and 3.0)
    'to prevent error occured when this function is running
    Set enc = CreateObject("System.Security.Cryptography.MD5CryptoServiceProvider")

    If Trim(YourText) = "" Then
        bytes = StrConv(Now() & Var_Host, vbFromUnicode)
    Else
        bytes = StrConv(YourText, vbFromUnicode)
    End If

    bytes = enc.ComputeHash_2(bytes)

    For Pos = 1 To UBound(bytes) + 1
       outstr = outstr & LCase(Right("0" & Hex(AscB(MidB(bytes, Pos, 1))), 2))
    Next Pos

    MD5 = outstr

    'Debug.Print "(" & YourText & ")" & MD5 & " / " & outstr & vbCrLf

    Set enc = Nothing
End Function
