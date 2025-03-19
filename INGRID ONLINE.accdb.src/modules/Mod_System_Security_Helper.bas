Attribute VB_Name = "Mod_System_Security_Helper"
Option Compare Database
Option Explicit

'---------------------------------------------------------------------------------------
' Procedure : ReadStringAsBinary
' Author    : Daniel Pineault, CARDA Consultants Inc.
' Website   : http://www.cardaconsultants.com
' Purpose   : Converts the supplied string to a binary array
' Copyright : The following is release as Attribution-ShareAlike 4.0 International
'             (CC BY-SA 4.0) - https://creativecommons.org/licenses/by-sa/4.0/
' Req'd Refs: Late Binding  -> None required
'             Early Binding -> Microsoft ActiveX Data Objects X.X Library
' Based off of ReadFileAsBinary()
'
' Input Variables:
' ~~~~~~~~~~~~~~~~
' sInput     : String to be converted
'
' Revision History:
' Rev       Date(yyyy-mm-dd)        Description
' **************************************************************************************
' 1         2023-01-03              Initial Public Release
'---------------------------------------------------------------------------------------
Public Function ReadStringAsBinary(ByVal sInput As String) As Variant
On Error GoTo Error_Handler
    '#Const EarlyBind = 1    'Use Early Binding
    #Const EarlyBind = 0    'Use Late Binding
    #If EarlyBind Then
        Dim oADOStream As ADODB.Stream
    #Else
        Dim oADOStream As Object
        Const adTypeBinary = 1
    #End If
    Dim aStringBytes() As Byte

    #If EarlyBind Then
        Set oADOStream = New ADODB.Stream
    #Else
        Set oADOStream = CreateObject("ADODB.Stream")
    #End If
    With oADOStream
        .Charset = "utf-8"
        .Open
        .WriteText sInput
        .Flush
        .Position = 0
        .Type = adTypeBinary
        .Position = 3    'no bom
        aStringBytes() = .Read
    End With
    ReadStringAsBinary = aStringBytes()

Error_Handler_Exit:
    On Error Resume Next
    If Not oADOStream Is Nothing Then
        oADOStream.Close
        Set oADOStream = Nothing
    End If
    Exit Function

Error_Handler:
    MsgBox "The following error has occured" & vbCrLf & vbCrLf & _
           "Error Source: ReadStringAsBinary" & vbCrLf & _
           "Error Number: " & Err.Number & vbCrLf & _
           "Error Description: " & Err.DESCRIPTION & _
           Switch(Erl = 0, "", Erl <> 0, vbCrLf & "Line No: " & Erl) _
           , vbOKOnly + vbCritical, "An Error has Occured!"
    Resume Error_Handler_Exit
End Function
