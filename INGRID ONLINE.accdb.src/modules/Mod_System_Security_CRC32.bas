Attribute VB_Name = "Mod_System_Security_CRC32"
Option Compare Database
Option Explicit

Dim Table(255) As Long
Dim RunOnce As Boolean
Dim TableReady As Boolean

Public Function CRC32(ByRef Data() As Byte) As Long
    Dim Remainder As Long
    Dim i As Long
    Dim j As Long

    If RunOnce = False Then 'Check if the table has already been generated.
        RunOnce = True
        For i = 0 To 255
            Remainder = i
            For j = 0 To 7
                If Remainder And 1 Then
                    Remainder = ShiftRight(Remainder) Xor &HEDB88320
                Else
                    Remainder = ShiftRight(Remainder)
                End If
            Next j
            Table(i) = Remainder
        Next i
        TableReady = True
    End If
    If TableReady = False Then Exit Function 'Check if table calculation has started, but not completed, on another thread.


    'Calculate CRC32 of data.
    CRC32 = &HFFFFFFFF
    For i = 0 To UBound(Data)
        CRC32 = ShiftRight8(CRC32) Xor Table((CRC32 And &HFF&) Xor Data(i))
    Next i
    CRC32 = Not CRC32
End Function


Private Function ShiftRight(ByVal Value As Long) As Long
    Dim TopBit As Boolean
    TopBit = Value And &H80000000
    ShiftRight = (Value And &H7FFFFFFF) \ 2
    If TopBit Then ShiftRight = ShiftRight Or &H40000000
End Function

Private Function ShiftRight8(ByVal Value As Long) As Long
    ShiftRight8 = ShiftRight(Value)
    ShiftRight8 = ShiftRight(ShiftRight8)
    ShiftRight8 = ShiftRight(ShiftRight8)
    ShiftRight8 = ShiftRight(ShiftRight8)
    ShiftRight8 = ShiftRight(ShiftRight8)
    ShiftRight8 = ShiftRight(ShiftRight8)
    ShiftRight8 = ShiftRight(ShiftRight8)
    ShiftRight8 = ShiftRight(ShiftRight8)
End Function
