Attribute VB_Name = "Mod_System_Security_HashEngine"
Option Compare Database
Option Explicit

'---------------------------------------------------------------------------------------
' Procedure : Crypto_GetStringHash
' Author    : Daniel Pineault, CARDA Consultants Inc.
' Website   : http://www.cardaconsultants.com
' Purpose   : Returns the specified Hash for the supplied string.
' Copyright : The following is release as Attribution-ShareAlike 4.0 International
'             (CC BY-SA 4.0) - https://creativecommons.org/licenses/by-sa/4.0/
' Req'd Refs: Late Binding  -> none required
' Dependencies: Requires ReadStringAsBinary()
'
' Input Variables:
' ~~~~~~~~~~~~~~~~
' sInput            : String to get the Hash of
' sHashAlgorithm    : Algorithm to use for the Hashing: MACTripleDES, MD5, RIPEMD160
'                     SHA1, SHA256, SHA384 or SHA512
'
' Usage:
' ~~~~~~
' ? Crypto_GetStringHash("String to get the Hash of", "MD5")
'   Returns -> 69563FFABD2E9D63BF83567F1B664C6
' ? Crypto_GetStringHash("String to get the Hash of", "SHA256")
'   Returns -> 823C17899E52A815FD90EEDDAB5C67B88C1E868E81B88F5ECEFA1D3B17D753
'
' Revision History:
' Rev       Date(yyyy-mm-dd)        Description
' **************************************************************************************
' 1         2023-01-03              Initial Public Release
'---------------------------------------------------------------------------------------
Function Crypto_GetStringHash(sInput As String, sHashAlgorithm As String) As String
    On Error GoTo Error_Handler
    Dim oSSCrypto             As Object
    Dim aFileBytes()          As Byte
    Dim sOutput               As String
    Dim lCounter              As Long

    Select Case sHashAlgorithm
        Case "MACTripleDES"
            Set oSSCrypto = CreateObject("System.Security.Cryptography.MACTripleDES")    '
        Case "MD5"
            Set oSSCrypto = CreateObject("System.Security.Cryptography.MD5CryptoServiceProvider")    '128 bits
        Case "RIPEMD160"
            Set oSSCrypto = CreateObject("System.Security.Cryptography.RIPEMD160Managed")    '160 bits
        Case "SHA1"
            Set oSSCrypto = CreateObject("System.Security.Cryptography.SHA1Managed")    '160 bits
        Case "SHA256"
            Set oSSCrypto = CreateObject("System.Security.Cryptography.SHA256Managed")    '256 bits
        Case "SHA384"
            Set oSSCrypto = CreateObject("System.Security.Cryptography.SHA384Managed")    '384 bits
        Case "SHA512"
            Set oSSCrypto = CreateObject("System.Security.Cryptography.SHA512Managed")    '512 bits
        Case Else
            'MsgBox ""
            GoTo Error_Handler_Exit
    End Select

    'aFileBytes() = StrConv(sInput, vbFromUnicode) 'fine for English only.
    aFileBytes() = ReadStringAsBinary(sInput)
    aFileBytes() = oSSCrypto.ComputeHash_2((aFileBytes()))
    For lCounter = 0 To UBound(aFileBytes())
        sOutput = sOutput & UCase(Mid("0" & Hex(aFileBytes(lCounter)), 2))
    Next
    Crypto_GetStringHash = sOutput

Error_Handler_Exit:
    On Error Resume Next
    Set oSSCrypto = Nothing
    Exit Function

Error_Handler:
    MsgBox "The following error has occurred" & vbCrLf & vbCrLf & _
           "Error Source: Crypto_GetStringHash" & vbCrLf & _
           "Error Number: " & Err.Number & vbCrLf & _
           "Error Description: " & Err.DESCRIPTION & _
           Switch(Erl = 0, "", Erl <> 0, vbCrLf & "Line No: " & Erl) _
           , vbOKOnly + vbCritical, "An Error has Occurred!"
    Resume Error_Handler_Exit
End Function
