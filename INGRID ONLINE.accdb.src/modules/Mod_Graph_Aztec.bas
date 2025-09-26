Attribute VB_Name = "mod_graph_Aztec"
'https://zingl.github.io/
Option Explicit
Dim el As Long, b As Long, numBytes As Integer
Dim typ As Integer, enc(1665) As Integer, X As Long, Y As Long
'
' Aztec barcode symbol creation according ISO/IEC 24778:2008
'   param text: barcode data
'   param security optional: percentage of checkwords used for security 1%-90% (23%)
'   param layers optional: number of layers (size), default autodetect, 0 - Aztec rune
'  called from report Detail_Format() to draw Aztec barcode
Public Sub drawAztec(Text As TextBox, Optional security As Integer, Optional layers As Integer = 1)
Dim eb As Long, md As Long, T As Long, f As Long
Dim dx As Long, dy As Long, ctr As Long, ec As Long, txt As String, r As Double
Dim rpt As Report, c As Long, i As Long, j As Long, k As Long, l As Long, m As Long
Dim Backto As Integer, Latch As Variant, CurSeq(6) As Variant, NxtSeq(6) As Variant, NxtEnc(1) As Integer
Dim CharSize As Variant, LatLen As Variant, ShftLen As Variant, CharMap As Variant
On Error GoTo failed
CharSize = Array(5, 5, 5, 5, 4, 8)
LatLen = Array(Split("0,5,5,10,5,10", ","), Split("9,0,5,10,5,10", ","), Split("5,5,0,5,10,10", ","), _
            Split("5,10,10,0,10,15", ","), Split("4,9,9,14,0,14", ","), Split("0,0,0,0,0,0", ","))
ShftLen = Array(Split("2e4,2e4,2e4,5,2e4", ","), Split("5,2e4,2e4,5,2e4", ","), Split("2e4,2e4,2e4,5,2e4", ","), _
            Split("2e4,2e4,2e4,2e4,2e4", ","), Split("4,2e4,2e4,4,2e4", ","))
Latch = Array(Array(Array(), Array(28), Array(29), Array(29, 30), Array(30), Array(31)), _
            Array(Array(30, 14), Array(), Array(29), Array(29, 30), Array(30), Array(31)), _
            Array(Array(29), Array(28), Array(), Array(30), Array(28, 30), Array(31)), _
            Array(Array(31), Array(31, 28), Array(31, 29), Array(), Array(31, 30), Array(31, 31)), _
            Array(Array(14), Array(14, 28), Array(14, 29), Array(14, 29, 30), Array(), Array(14, 31)))
txt = " abcdefghijklmnopqr@\^_`|~" + Chr(127)
For i = 2 To 19: Mid(txt, i, 1) = Chr(IIf(i < 15, i - 1, i + 12)): Next i  ' make punc table
CharMap = Array(" ABCDEFGHIJKLMNOPQRSTUVWXYZ", " abcdefghijklmnopqrstuvwxyz", txt, String(5, 13) & "!""#$%&'()*+,-./:;<=>?[]{}", " 0123456789,.")

Set rpt = Text.Parent ' Report

If security = 0 Then
    i = InStr(LCase(Text.Tag), "aztec") ' get security from name postfix
    If (i > 0 And i + 5 < Len(Text.Tag)) Then security = val(Mid(Text.Tag, i + 5, 2))
End If
If security < 1 Then security = 23 Else If security > 90 Then security = 90

txt = utf16to8(Text)
el = Len(txt): X = 4: typ = 0
Do ' compute word size b: 6/8/10/12 bits
    i = Int(el * 100 / (100 - security) + 3) * X ' needed bits, at least 3 checkwords
    If i > l Then l = i
    b = IIf(l <= 240, 6, IIf(l <= 1920, 8, IIf(l <= 10208, 10, 12))) ' bit capacity -> word size
    i = IIf(layers < 3, 6, IIf(layers < 9, 8, IIf(layers < 23, 10, 12))) ' layer paramerter
    If i > b Then b = i
    If X >= b Then Exit Do
    For i = 0 To 5 ' create array of arrays
        CurSeq(i) = enc: NxtSeq(i) = NxtEnc
        CurSeq(i)(0) = 20000: CurSeq(i)(1) = 0 ' first entry is length of seq
    Next i
    CurSeq(0)(0) = 0
    For i = 1 To Len(txt) ' calculate shortest message sequence
        For T = 0 To 5 ' check for shorter latch to
            For f = 0 To 5 ' if latch from
                If CurSeq(f)(0) + LatLen(f)(T) < CurSeq(T)(0) And (f < 5 Or T = Backto) Then
                    CurSeq(T) = CurSeq(f) ' replace by shorter sequence
                    If f < 5 Then ' latch from shorter mode
                        For j = 0 To UBound(Latch(f)(T))
                            Stream CurSeq(T), Latch(f)(T)(j), IIf(Latch(f)(T)(j) < 16, 4, 5)
                        Next j
                    Else
                        binary CurSeq(T), i - 1, txt ' return from binary -> encode
                    End If
                    If T = 5 Then Backto = f: numBytes = 0: CurSeq(5)(0) = CurSeq(5)(0) + 5 ' begin binary shift
                End If
            Next f
        Next T
        For j = 0 To 4: NxtSeq(j)(0) = 20000: Next j
        j = IIf(i < Len(txt), InStr(vbCrLf & ". , : ", Mid(txt, i, 2)), 0)  ' special 2 char sequences
        For T = 0 To 4 ' encode char
            k = IIf(j And 1, j \ 2 + 2, InStr(CharMap(T), Mid(txt, i, 1))) ' index to map
            If k > 0 And (j = 0 Or T = 3) Then ' char in set ?
                If CurSeq(T)(0) + CharSize(T) < NxtSeq(T)(0) Then
                    NxtSeq(T) = CurSeq(T) ' extend directly
                    Stream NxtSeq(T), k, CharSize(T)  ' add char
                End If
                For f = 0 To 4 ' encode char by shift from
                    If f <> T And CurSeq(f)(0) + ShftLen(f)(T) + CharSize(T) < NxtSeq(f)(0) Then
                        NxtSeq(f) = CurSeq(f)
                        Stream NxtSeq(f), IIf(T = 3, 0, IIf(f < 4, 28, 15)), CharSize(f) ' add shift
                        Stream NxtSeq(f), k, 5  ' add char
                    End If
                Next f
            End If
        Next T
        Do
            numBytes = numBytes + 1
            CurSeq(5)(0) = CurSeq(5)(0) + IIf(numBytes = 32, 19, 8) ' binary exeeds 32 bytes
            If (j And 1) = 0 Then Exit Do
            i = i + 1: j = 0 ' 2 char seq: jump over 2nd
        Loop
        For T = 0 To 4: CurSeq(T) = NxtSeq(T): Next T ' take next sequence
    Next i
    binary CurSeq(5), Len(txt), txt ' encode remaining bytes
    For i = 0 To 5 ' get shortest encoding
        If CurSeq(i)(0) < CurSeq(T)(0) Then T = i
    Next i
    i = b - CurSeq(T)(0) Mod b
    If (i < b) Then Stream CurSeq(T), 2 ^ i - 1, i  ' padding
    el = CurSeq(T)(0) \ b
    X = b
Loop
If el > 1660 Then Err.Raise 514, "Aztec code", "Message too long."
For i = 0 To el: enc(i) = CurSeq(T)(i + 1): Next i

typ = IIf(l > 608 Or el > 64, 14, 11) ' full or compact Aztec
md = val(Left(txt, 3)) ' Aztec rune possible ?
If md < 0 Or md > 255 Or md & "" <> txt Or layers > 0 Then
    i = -Int((typ - Sqr(l + typ * typ)) / 4) ' needed layers
    If i > layers Then layers = i
    If layers > 32 Then layers = 32
End If
ec = (8 * layers * (typ + 2 * layers)) \ b - el ' # of checkwords
typ = typ \ 2: ctr = typ + 2 * layers: ctr = ctr + (ctr - 1) \ 15 ' center position

rpt.ScaleMode = 1 ' layout barcode, scale barcode to textbox
X = IIf(Text.Width < Text.Height, 0, Text.Height - Text.Width) / 2 - Text.Left
Y = IIf(Text.Width < Text.Height, Text.Width - Text.Height, 0) / 2 - Text.Top
r = IIf(Text.Width < Text.Height, Text.Width, Text.Height) / (2 * ctr + 1)
rpt.Scale (X / r - ctr, Y / r - ctr)-((rpt.ScaleWidth + X) / r - ctr, (rpt.ScaleHeight + Y) / r - ctr)

For Y = 1 - typ To typ - 1 ' layout central finder
    For X = 1 - typ To typ - 1
        If (IIf(Abs(X) > Abs(Y), X, Y) And 1) = 0 Then
            rpt.Line (X, Y)-Step(1, 1), Text.ForeColor, BF
        End If
    Next X
Next Y
For i = 0 To 5 ' orientation marks
    X = Array(-typ, -typ, 1 - typ, typ, typ, typ)(i)
    Y = Array(1 - typ, -typ, -typ, typ - 1, 1 - typ, -typ)(i)
    rpt.Line (X, Y)-Step(1, 1), Text.ForeColor, BF
Next i
If layers > 0 Then ' layout data
    addCheck ec, 2 ^ b - 1, Array(67, 301, 1033, 4201)(b / 2 - 3) ' error correction, generator polynomial
    X = -typ: Y = X - 1 ' start of layer 1 at top left
    j = (3 * typ + 11) / 2: l = j ' length of inner side
    dx = 1: dy = 0 ' direction right
    For ec = ec + el - 1 To 0 Step -1 ' layout codeword
        c = enc(ec) ' data in reversed order inside to outside
        For i = 1 To b / 2
            If c And 1 Then ' odd bit
                rpt.Line (X, Y)-Step(1, 1), Text.ForeColor, BF
            End If
            move dy, -dx ' move across
            If c And 2 Then ' even bit
                rpt.Line (X, Y)-Step(1, 1), Text.ForeColor, BF
            End If
            move dx - dy, dx + dy ' move ahead
            j = j - 1
            If j = 0 Then ' spiral turn
                move dy, -dx ' move across
                j = dx: dx = -dy: dy = j ' rotate clockwise
                If dx < 1 Then
                    move dx - dy, dx + dy ' move ahead
                    move dx - dy, dx + dy ' move ahead
                Else
                    l = l + 4 ' full turn -> next layer
                End If
                j = l ' start new side
            End If
            c = c \ 4
        Next i
    Next ec
    If typ = 7 Then ' layout reference grid
        For X = (15 - ctr) And -16 To ctr Step 16
            For Y = (1 - ctr) And -2 To ctr Step 2
                If Abs(X) > typ Or Abs(Y) > typ Then
                    rpt.Line (X, Y)-Step(1, 1), Text.ForeColor, BF
                    If Y And 15 Then rpt.Line (Y, X)-Step(1, 1), Text.ForeColor, BF
                End If
            Next Y
        Next X
    End If
    md = (layers - 1) * (typ * 992 - 4896#) + el - 1 ' 2/5 + 6/11 mode bits
End If
el = typ - 2 ' process modes message compact/full
For i = el - 1 To 0 Step -1
    enc(i) = md And 15 ' mode to 4 bit words
    md = md \ 16
Next i
addCheck typ \ 2 + 3, 15, 19 ' add 5/6 words error correction
el = el + typ \ 2 + 3 ' init bit stream
b = (typ * 3) \ 2  ' 7/10 bits per side
j = IIf(layers, 0, 10) 'XOR Aztec rune data
enc(0) = b * el - b: enc(el) = 0 ' init stream
For i = 1 To b
    Stream enc, j Xor enc(i), 4  ' 8/16 words to 4 chunks
Next i
j = 1 ' layout mode data
For i = 2 - typ To typ - 2
    If typ = 7 And i = 0 Then i = i + 1 ' skip reference grid
    If enc(b + 1) And j Then rpt.Line (-i, -typ)-Step(1, 1), Text.ForeColor, BF ' top
    If enc(b + 2) And j Then rpt.Line (typ, -i)-Step(1, 1), Text.ForeColor, BF ' right
    If enc(b + 3) And j Then rpt.Line (i, typ)-Step(1, 1), Text.ForeColor, BF ' bottom
    If enc(b + 4) And j Then rpt.Line (-typ, i)-Step(1, 1), Text.ForeColor, BF ' left
    j = j + j
Next i

failed:
'Resume Next
Text.Visible = Err.Number ' hide if no error
If Err.Number Then Debug.Print "ERROR: " & Err.DESCRIPTION
End Sub

' compute Reed Solomon error detection and correction
Private Sub addCheck(ByVal ec As Integer, ByVal S As Integer, ByVal P As Integer)
Dim i As Integer, j As Integer, X As Integer
ReDim rc(ec + 2) As Integer, lG(S + 1) As Integer, ex(S) As Integer
j = 1
For i = 0 To S - 1 ' compute log/exp table of Galois field
    ex(i) = j: lG(j) = i
    j = j + j: If (j > S) Then j = j Xor P ' GF polynomial
Next i
rc(ec + 1) = 0
For i = 0 To ec ' compute RS generator polynomial
    rc(ec - i) = 1
    For j = ec - i + 1 To ec
        rc(j) = rc(j + 1) Xor ex((lG(rc(j)) + i) Mod S)
    Next j
    enc(el + i) = 0
Next i
For i = 0 To el - 1 ' compute RS checkwords
    X = enc(el) Xor enc(i)
    For j = 1 To ec
        enc(el + j - 1) = enc(el + j) Xor IIf(X, ex((lG(rc(j)) + lG(X)) Mod S), 0)
    Next j
Next i
End Sub

' move one cell
Private Sub move(ByVal dx As Integer, ByVal dy As Integer)
Do
    X = X + dx
Loop While typ = 7 And (X And 15) = 0 ' skip reference grid
Do
    Y = Y + dy
Loop While typ = 7 And (Y And 15) = 0
End Sub

' add data to bit stream
Private Sub Stream(ByRef EncSeq As Variant, ByVal val As Long, ByVal bits As Integer)
Dim ab As Integer, el As Integer, eb As Long
eb = EncSeq(0) Mod b + bits
el = EncSeq(0) \ b + 1
val = val * 2 ^ b
EncSeq(0) = EncSeq(0) + bits
EncSeq(el) = EncSeq(el) + val \ 2 ^ eb ' add data
Do While eb >= b ' word full ?
    If typ = 0 And (EncSeq(el) < 2 Or EncSeq(el) + 3 > 2 ^ b) Then ' bit stuffing
        EncSeq(el) = EncSeq(el) Xor ((EncSeq(el) + 3) \ 2 And 1) ' add complementary bit
        eb = eb + 1: EncSeq(0) = EncSeq(0) + 1
    End If
    eb = eb - b: el = el + 1
    EncSeq(el) = (val \ 2 ^ eb) And ((2 ^ b) - 1)
Loop
End Sub
' encode numBytes of binary
Private Sub binary(ByRef EncSeq As Variant, ByVal Pos As Integer, ByRef txt As String)
Dim i As Integer
EncSeq(0) = EncSeq(0) - numBytes * 8 - IIf(numBytes > 31, 16, 5)
Stream EncSeq, IIf(numBytes > 31, 0, numBytes), 5  ' len
If numBytes > 31 Then Stream EncSeq, numBytes - 31, 11  ' long len
For i = Pos - numBytes + 1 To Pos
    Stream EncSeq, AscW(Mid(txt, i, 1)), 8  ' bytes
Next i
End Sub
