Attribute VB_Name = "mod_graph_Code128"
'https://zingl.github.io/
Option Explicit

' Code 128 symbol creation according ISO/IEC 15417:2007
'   creates Code 128 barcode symbol in textbox.
'   param text: barcode data
'  called from report Detail_Format() to draw Code 128 barcode
Public Sub drawCode128(Text As TextBox)
Dim rpt As Report, T As Byte, i As Long, j As Long, c As Long, l As Long, txt As String
On Error GoTo failed
Set rpt = Text.Parent
txt = utf16to8(Text)
ReDim enc(3 * Len(txt) + 5) As Byte
T = 3: l = 0
For i = 1 To Len(txt)
    If T <> 2 Then ' alpha mode
        For j = 0 To Len(Text) - i ' count digits
            If Not IsNumeric(Mid(txt, i + j, 1)) Then Exit For
        Next j
        If (j > 1 And i = 1) Or (j > 3 And (i + j < Len(txt) Or (j And 1) = 0)) Then
            enc(l) = IIf(i = 1, 105, 99) ' start / code C
            l = l + 1: T = 2 ' to digit
        End If
    End If
    If T = 2 Then ' digit mode
        If IsNumeric(Mid(txt, i, 1)) And IsNumeric(Mid(txt, i + 1, 1)) Then
            enc(l) = val(Mid(Text, i, 2)) ' two digits
            l = l + 1: i = i + 1
        Else
            T = 3 ' exit digit
        End If
    End If
    If T <> 2 Then ' alpha mode
        c = AscW(Mid(txt, i, 1))
        If T > 2 Or ((c And 127) < 32 And T) Or ((c And 127) > 95 And T = 0) Then  ' change ?
            For j = IIf(T > 2 Or i + 1 = Len(txt), i, i + 1) To Len(txt) - 1 ' A or B needed?
                If AscW(Mid(txt, j, 1)) - 32 And 64 Then Exit For ' < 32 or > 95
            Next j
            j = IIf(AscW(Mid(txt, j, 1)) And 96, 1, 0) ' new set
            enc(l) = IIf(i = 1, 103 + j, IIf(j <> T, 101 - j, 98))
            l = l + 1: T = j ' change set: start,code,(shift)
        End If
        If c > 127 Then enc(l) = 101 - T: l = l + 1 ' FNC4: char > 127
        enc(l) = ((c And 127) + 64) Mod 96: l = l + 1
    End If
Next i
If i = 1 Then enc(0) = 103: l = 1 ' empty message
j = enc(0) ' add check sum
For i = 1 To l
    j = j + i * enc(i)
Next i
enc(l) = j Mod 103: enc(l + 1) = 106 ' add stop

rpt.ScaleMode = 1 ' rpt barcode, scale barcode to textbox
rpt.Scale (-Text.Left * (11 * l + 24) / Text.Width, -Text.Top / Text.Height)- _
    ((rpt.ScaleWidth - Text.Left) * (11 * l + 24) / Text.Width, (rpt.ScaleHeight - Text.Top) / Text.Height)
For i = 0 To l + 1 ' code to pattern
    c = Array(277, 337, 341, 69, 73, 133, 84, 88, 148, 324, 328, 388, 22, 82, 86, 37, 97, _
        101, 356, 322, 326, 292, 352, 530, 517, 577, 581, 532, 592, 596, 273, 281, 401, 9, _
        129, 137, 24, 144, 152, 264, 384, 392, 18, 26, 146, 33, 41, 161, 545, 266, 386, 288, _
        296, 290, 513, 521, 641, 528, 536, 656, 560, 332, 896, 5, 13, 65, 77, 193, 197, 20, 28, _
        80, 92, 208, 212, 452, 320, 800, 448, 176, 7, 67, 71, 52, 112, 116, 772, 832, 836, 275, _
        305, 785, 3, 11, 131, 48, 56, 768, 776, 35, 50, 515, 770, 268, 260, 262, 416)(enc(i))
    j = 11 * i: T = c \ 256 + 1 ' 1st bar
    rpt.Line (j, 0)-Step(T, 1), Text.ForeColor, BF
    j = j + T + ((c \ 64) And 3) + 1
    T = ((c \ 16) And 3) + 1 ' 2nd bar
    rpt.Line (j, 0)-Step(T, 1), Text.ForeColor, BF
    j = j + T + ((c \ 4) And 3) + 1 ' 3rd bar
    rpt.Line (j, 0)-Step((c And 3) + 1, 1), Text.ForeColor, BF
Next i
rpt.Line (11 * i, 0)-Step(2, 1), Text.ForeColor, BF  ' stop bar

failed:
Text.Visible = Err.Number ' hide if no error
If Err.Number Then Debug.Print "ERROR: " & Err.DESCRIPTION
End Sub
