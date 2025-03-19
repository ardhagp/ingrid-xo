﻿Attribute VB_Name = "Mod_System_Security_SHA256_2"
Option Compare Database
Option Explicit

'Reference: http://khoiriyyah.blogspot.com/2012/06/vb6-hash-class-md5-sha-1-sha-256-sha.html
'The above article is excellent but that code works for 32-bit Access/Excel only.
'This works on both 32-bit and 64-bit Access/Excel.
'Requires no dll References in the VB Editor.  It uses advapi32.dll, which needs no Reference
'  as these are Windows API calls only.
'I have not seen documented anywhere else on the Internet how to make these calls in 64-bit apps.

#If VBA7 And Win64 Then
Private Declare PtrSafe Function CryptAcquireContext Lib "advapi32.dll" Alias "CryptAcquireContextA" _
                            (ByRef phProv As LongPtr, ByVal pszContainer As String, ByVal pszProvider As String, _
                             ByVal dwProvType As Long, ByVal dwFlags As Long) As Long
Private Declare PtrSafe Function CryptReleaseContext Lib "advapi32.dll" _
                            (ByVal hProv As LongPtr, ByVal dwFlags As Long) As Long
Private Declare PtrSafe Function CryptCreateHash Lib "advapi32.dll" _
                            (ByVal hProv As LongPtr, ByVal Algid As Long, ByVal hKey As LongPtr, ByVal dwFlags As Long, _
                             ByRef phHash As LongPtr) As Long
Private Declare PtrSafe Function CryptDestroyHash Lib "advapi32.dll" _
                            (ByVal hHash As LongPtr) As Long
Private Declare PtrSafe Function CryptHashData Lib "advapi32.dll" _
                            (ByVal hHash As LongPtr, pbData As Any, ByVal cbData As Long, ByVal dwFlags As Long) As Long
Private Declare PtrSafe Function CryptGetHashParam Lib "advapi32.dll" _
                            (ByVal hHash As LongPtr, ByVal dwParam As Long, pbData As Any, ByRef pcbData As Long, _
                             ByVal dwFlags As Long) As Long
#Else
Private Declare Function CryptAcquireContext Lib "advapi32.dll" Alias "CryptAcquireContextA" _
                            (ByRef phProv As Long, ByVal pszContainer As String, ByVal pszProvider As String, _
                             ByVal dwProvType As Long, ByVal dwFlags As Long) As Long
Private Declare Function CryptReleaseContext Lib "advapi32.dll" _
                            (ByVal hProv As Long, ByVal dwFlags As Long) As Long
Private Declare Function CryptCreateHash Lib "advapi32.dll" _
                            (ByVal hProv As Long, ByVal Algid As Long, ByVal hKey As Long, ByVal dwFlags As Long, _
                             ByRef phHash As Long) As Long
Private Declare Function CryptDestroyHash Lib "advapi32.dll" _
                            (ByVal hHash As Long) As Long
Private Declare Function CryptHashData Lib "advapi32.dll" _
                            (ByVal hHash As Long, pbData As Any, ByVal cbData As Long, ByVal dwFlags As Long) As Long
Private Declare Function CryptGetHashParam Lib "advapi32.dll" _
                            (ByVal hHash As Long, ByVal dwParam As Long, pbData As Any, ByRef pcbData As Long, _
                             ByVal dwFlags As Long) As Long
#End If


Private Const PROV_RSA_FULL   As Long = 1
Private Const PROV_RSA_AES    As Long = 24
Private Const CRYPT_VERIFYCONTEXT As Long = &HF0000000

Private Const HP_HASHVAL      As Long = 2
Private Const HP_HASHSIZE     As Long = 4

Private Const ALG_TYPE_ANY    As Long = 0
Private Const ALG_CLASS_HASH  As Long = 32768

Private Const ALG_SID_MD2     As Long = 1
Private Const ALG_SID_MD4     As Long = 2
Private Const ALG_SID_MD5     As Long = 3
Private Const ALG_SID_SHA     As Long = 4
Private Const ALG_SID_SHA_256 As Long = 12
Private Const ALG_SID_SHA_384 As Long = 13
Private Const ALG_SID_SHA_512 As Long = 14

Private Const CALG_MD2        As Long = (ALG_CLASS_HASH Or ALG_TYPE_ANY Or ALG_SID_MD2)
Private Const CALG_MD4        As Long = (ALG_CLASS_HASH Or ALG_TYPE_ANY Or ALG_SID_MD4)
Private Const CALG_MD5        As Long = (ALG_CLASS_HASH Or ALG_TYPE_ANY Or ALG_SID_MD5)
Private Const CALG_SHA        As Long = (ALG_CLASS_HASH Or ALG_TYPE_ANY Or ALG_SID_SHA)
Private Const CALG_SHA_256    As Long = (ALG_CLASS_HASH Or ALG_TYPE_ANY Or ALG_SID_SHA_256)
Private Const CALG_SHA_384    As Long = (ALG_CLASS_HASH Or ALG_TYPE_ANY Or ALG_SID_SHA_384)
Private Const CALG_SHA_512    As Long = (ALG_CLASS_HASH Or ALG_TYPE_ANY Or ALG_SID_SHA_512)

' Create Hash
Private Function CreateHash(abytData() As Byte, ByVal lngAlgID As Long) As String
    #If VBA7 And Win64 Then
       Dim hProv As LongPtr
       Dim hHash As LongPtr
    #Else
       Dim hProv As Long
       Dim hHash As Long
    #End If
    Dim abytHash(0 To 63) As Byte
    Dim lngLength As Long
    Dim lngResult As Long
    Dim strHash As String
    Dim i As Long
    Dim z As Long
    strHash = ""

    z = 0
    If CryptAcquireContext(hProv, vbNullString, vbNullString, _
                           IIf(lngAlgID >= CALG_SHA_256, PROV_RSA_AES, PROV_RSA_FULL), _
                           CRYPT_VERIFYCONTEXT) <> 0& Then
        If CryptCreateHash(hProv, lngAlgID, 0&, 0&, hHash) <> 0& Then
            lngLength = UBound(abytData()) - LBound(abytData()) + 1
            If lngLength > 0 Then lngResult = CryptHashData(hHash, abytData(LBound(abytData())), lngLength, 0&) _
                             Else lngResult = CryptHashData(hHash, ByVal 0&, 0&, 0&)
            If lngResult <> 0& Then
                lngLength = UBound(abytHash()) - LBound(abytHash()) + 1
                If CryptGetHashParam(hHash, HP_HASHVAL, abytHash(LBound(abytHash())), lngLength, z) <> 0& Then
                    For i = 0 To lngLength - 1
                        strHash = strHash & Right$("0" & Hex$(abytHash(LBound(abytHash()) + i)), 2)
                    Next
                End If
            End If
            CryptDestroyHash hHash
        End If
        CryptReleaseContext hProv, 0&
    End If
    CreateHash = LCase$(strHash)
End Function

' Create Hash From String(Shift_JIS)
Private Function CreateHashString(ByVal strData As String, ByVal lngAlgID As Long) As String
    CreateHashString = CreateHash(StrConv(strData, vbFromUnicode), lngAlgID)
End Function

' Create Hash From File
Private Function CreateHashFile(ByVal strFileName As String, ByVal lngAlgID As Long) As String
    Dim abytData() As Byte
    Dim intFile As Integer
    Dim lngError As Long
    On Error Resume Next
        If Len(Dir(strFileName)) > 0 Then
            intFile = FreeFile
            Open strFileName For Binary Access Read Shared As #intFile
            abytData() = InputB(LOF(intFile), #intFile)
            Close #intFile
        End If
        lngError = Err.Number
    On Error GoTo 0
    If lngError = 0 Then CreateHashFile = CreateHash(abytData(), lngAlgID) _
                    Else CreateHashFile = ""
End Function

' MD5
Public Function CreateMD5Hash(abytData() As Byte) As String
    CreateMD5Hash = CreateHash(abytData(), CALG_MD5)
End Function

Public Function CreateMD5HashString(ByVal strData As String) As String
    CreateMD5HashString = CreateHashString(strData, CALG_MD5)
End Function

Public Function CreateMD5HashFile(ByVal strFileName As String) As String
    CreateMD5HashFile = CreateHashFile(strFileName, CALG_MD5)
End Function

' SHA-1
Public Function CreateSHA1Hash(abytData() As Byte) As String
    CreateSHA1Hash = CreateHash(abytData(), CALG_SHA)
End Function

Public Function CreateSHA1HashString(ByVal strData As String) As String
    CreateSHA1HashString = CreateHashString(strData, CALG_SHA)
End Function

Public Function CreateSHA1HashFile(ByVal strFileName As String) As String
    CreateSHA1HashFile = CreateHashFile(strFileName, CALG_SHA)
End Function

' SHA-256
Public Function CreateSHA256Hash(abytData() As Byte) As String
    CreateSHA256Hash = CreateHash(abytData(), CALG_SHA_256)
End Function

Public Function CreateSHA256HashString(ByVal strData As String) As String
    CreateSHA256HashString = CreateHashString(strData, CALG_SHA_256)
End Function

Public Function CreateSHA256HashFile(ByVal strFileName As String) As String
    CreateSHA256HashFile = CreateHashFile(strFileName, CALG_SHA_256)
End Function

' SHA-384
Public Function CreateSHA384Hash(abytData() As Byte) As String
    CreateSHA384Hash = CreateHash(abytData(), CALG_SHA_384)
End Function

Public Function CreateSHA384HashString(ByVal strData As String) As String
    CreateSHA384HashString = CreateHashString(strData, CALG_SHA_384)
End Function

Public Function CreateSHA384HashFile(ByVal strFileName As String) As String
    CreateSHA384HashFile = CreateHashFile(strFileName, CALG_SHA_384)
End Function

' SHA-512
Public Function CreateSHA512Hash(abytData() As Byte) As String
    CreateSHA512Hash = CreateHash(abytData(), CALG_SHA_512)
End Function

Public Function CreateSHA512HashString(ByVal strData As String) As String
    CreateSHA512HashString = CreateHashString(strData, CALG_SHA_512)
End Function

Public Function CreateSHA512HashFile(ByVal strFileName As String) As String
    CreateSHA512HashFile = CreateHashFile(strFileName, CALG_SHA_512)
End Function

' #Encryption #VBA
