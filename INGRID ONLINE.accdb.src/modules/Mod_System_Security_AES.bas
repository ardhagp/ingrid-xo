Attribute VB_Name = "Mod_System_Security_AES"
Option Compare Database
Option Explicit

' Function to encrypt a string using AES-128 in ECB mode (to match MySQL AES_ENCRYPT)
Public Function AESEncrypt_MySQL(plainText As String, key As String) As String
    On Error GoTo ErrorHandler

    Dim aes As Object
    Dim utf8 As Object
    Dim keyBytes() As Byte
    Dim plainBytes() As Byte
    Dim cipherBytes() As Byte
    Dim result As String

    ' Create AES encryption object
    Set aes = CreateObject("System.Security.Cryptography.RijndaelManaged")
    Set utf8 = CreateObject("System.Text.UTF8Encoding")

    ' Configure AES settings to match MySQL AES_ENCRYPT
    aes.KeySize = 128 ' AES-128 to match MySQL default
    aes.BlockSize = 128
    aes.mode = 2 ' CipherMode.ECB (to match MySQL default)
    aes.Padding = 2 ' PaddingMode.PKCS7 (matches MySQL)

    ' Convert key to 16 bytes (128 bits) for AES-128, matching MySQL behavior
    'keyBytes = utf8.GetBytes_4(Left(key & String(16, Chr(0)), 16)) ' MySQL pads with zeros
    keyBytes = utf8.GetBytes_4(Left(key & String(16, "0"), 16)) ' MySQL pads with zeros
    aes.key = keyBytes

    ' Convert plaintext to bytes
    plainBytes = utf8.GetBytes_4(plainText)

    ' Create encryptor and perform encryption
    Dim encryptor As Object
    Set encryptor = aes.CreateEncryptor()
    cipherBytes = encryptor.TransformFinalBlock(plainBytes, 0, UBound(plainBytes) + 1)

    ' Convert to Base64 for easy storage (match MySQL output format if needed)
    result = Base64Encode(cipherBytes)

    AESEncrypt_MySQL = result

    ' Clean up
    Set encryptor = Nothing
    Set aes = Nothing
    Set utf8 = Nothing
    Exit Function

ErrorHandler:
    MsgBox "Encryption Error: " & Err.DESCRIPTION, vbCritical
    AESEncrypt_MySQL = ""
    Set aes = Nothing
    Set utf8 = Nothing
End Function

' Function to decrypt a string using AES-128 in ECB mode (to match MySQL AES_DECRYPT)
Public Function AESDecrypt_MySQL(cipherText As String, key As String) As String
    On Error GoTo ErrorHandler

    Dim aes As Object
    Dim utf8 As Object
    Dim keyBytes() As Byte
    Dim cipherBytes() As Byte
    Dim plainBytes() As Byte

    ' Create AES decryption object
    Set aes = CreateObject("System.Security.Cryptography.RijndaelManaged")
    Set utf8 = CreateObject("System.Text.UTF8Encoding")

    ' Configure AES settings to match MySQL AES_DECRYPT
    aes.KeySize = 128 ' AES-128 to match MySQL default
    aes.BlockSize = 128
    aes.mode = 2 ' CipherMode.ECB (to match MySQL default)
    aes.Padding = 2 ' PaddingMode.PKCS7 (matches MySQL)

    ' Convert key to 16 bytes (128 bits) for AES-128, matching MySQL behavior
    keyBytes = utf8.GetBytes_4(Left(key & String(16, Chr(0)), 16)) ' MySQL pads with zeros
    aes.key = keyBytes

    ' Decode Base64 to get ciphertext
    cipherBytes = Base64Decode(cipherText)

    ' Create decryptor and perform decryption
    Dim decryptor As Object
    Set decryptor = aes.CreateDecryptor()
    plainBytes = decryptor.TransformFinalBlock(cipherBytes, 0, UBound(cipherBytes) + 1)

    ' Convert decrypted bytes to string
    AESDecrypt_MySQL = utf8.GetString(plainBytes)

    ' Clean up
    Set decryptor = Nothing
    Set aes = Nothing
    Set utf8 = Nothing
    Exit Function

ErrorHandler:
    MsgBox "Decryption Error: " & Err.DESCRIPTION, vbCritical
    AESDecrypt_MySQL = ""
    Set aes = Nothing
    Set utf8 = Nothing
End Function

' Helper function to encode byte array to Base64
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

' Helper function to decode Base64 to byte array
Private Function Base64Decode(base64String As String) As Byte()
    Dim xml As Object
    Set xml = CreateObject("MSXML2.DOMDocument")
    Dim node As Object
    Set node = xml.createElement("b64")
    node.DataType = "bin.base64"
    node.Text = base64String
    Base64Decode = node.nodeTypedValue
    Set node = Nothing
    Set xml = Nothing
End Function

' Test function to demonstrate usage
Public Sub TestAESEncryption_MySQL()
    Dim originalText As String
    Dim key As String
    Dim encryptedText As String
    Dim decryptedText As String

    originalText = "tito"
    'key = "MySecretKey12345" ' Must be exactly 16 bytes for AES-128
    key = "Or5KORe3P65GxSzW"

    encryptedText = AESEncrypt_MySQL(originalText, key)
    Debug.Print "Encrypted (Base64): " & encryptedText

    decryptedText = AESDecrypt_MySQL(encryptedText, key)
    Debug.Print "Decrypted: " & decryptedText
End Sub
