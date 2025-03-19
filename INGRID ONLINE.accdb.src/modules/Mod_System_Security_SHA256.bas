Attribute VB_Name = "Mod_System_Security_SHA256"
Option Compare Database
Option Explicit

Function SHA256(plainText As String) As String
'thedbguy@gmail.com
'1/1/2025

Dim encoder As Object
Dim hasher As Object
Dim TextToHash() As Byte
Dim hash() As Byte
Dim cypher() As String
Dim x As Long

' Create objects for encoding and hashing
Set encoder = CreateObject("System.Text.UTF8Encoding")
Set hasher = CreateObject("System.Security.Cryptography.SHA256Managed")

' Convert the input string to bytes
TextToHash = encoder.GetBytes_4(plainText)

' Compute the hash
hash = hasher.ComputeHash_2(TextToHash)

' Convert the hash to a hexadecimal string
ReDim cypher(UBound(hash))
For x = 0 To UBound(hash)
    cypher(x) = Hex$(hash(x))
Next

' Return the result
SHA256 = Join(cypher, "")

' Clean up objects

Set hasher = Nothing
Set encoder = Nothing

End Function
