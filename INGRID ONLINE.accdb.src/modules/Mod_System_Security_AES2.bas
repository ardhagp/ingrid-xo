Attribute VB_Name = "Mod_System_Security_AES2"
Option Compare Database
Option Explicit

Public Function AESEncrypt2_MySQL(plainText As String, key As String) As String
    On Error GoTo ErrorHandler

    Dim aes As Object
    Dim utf8 As Object
    Dim keyBytes() As Byte
    Dim plainBytes() As Byte
    Dim cipherBytes() As Byte
    Dim result As String

    Set aes = CreateObject("System.Security.Cryptography.RijndaelManaged")
    Set utf8 = CreateObject("System.Text.UTF8Encoding")

    aes.KeySize = 128
    aes.BlockSize = 128
    aes.Mode = 2 ' ECB
    aes.Padding = 2 ' PKCS7

    ' Use exact 16-byte key with zero padding
    keyBytes = utf8.GetBytes_4(Left(key & String(16, Chr(0)), 16))
    Debug.Print "Key bytes (VBA): " & Join(keyBytes, ",")
    aes.key = keyBytes

    plainBytes = utf8.GetBytes_4(plainText)
    Debug.Print "Plaintext bytes (VBA): " & Join(plainBytes, ",")

    Dim encryptor As Object
    Set encryptor = aes.CreateEncryptor()
    cipherBytes = encryptor.TransformFinalBlock(plainBytes, 0, UBound(plainBytes) + 1)
    Debug.Print "Encrypted bytes (VBA): " & Join(cipherBytes, ",")

    result = Base64Encode(cipherBytes)
    Debug.Print "Encrypted Base64 (VBA): " & result

    AESEncrypt2_MySQL = result

    Set encryptor = Nothing
    Set aes = Nothing
    Set utf8 = Nothing
    Exit Function

ErrorHandler:
    MsgBox "Encryption Error: " & Err.DESCRIPTION, vbCritical
    AESEncrypt2_MySQL = ""
    Set aes = Nothing
    Set utf8 = Nothing
End Function

Private Function Base64Encode(bytes() As Byte) As String
    Dim xml As Object
    Set xml = CreateObject("MSXML2.DOMDocument")
    Dim node As Object
    Set node = xml.createElement("b64")
    node.DataType = "bin.base64"
    node.nodeTypedValue = bytes
    Base64Encode = node.Text
    Set node = Nothing
    Set xml = Nothing
End Function

Public Sub TestAESEncryption2_MySQL()
    Dim originalText As String
    Dim key As String
    Dim encryptedText As String

    originalText = "Kholifah8786"
    key = "MySecretKey12345"

    encryptedText = AESEncrypt2_MySQL(originalText, key)
    Debug.Print "Final Encrypted (Base64): " & encryptedText
End Sub
