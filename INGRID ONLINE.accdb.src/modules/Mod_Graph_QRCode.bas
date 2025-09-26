Attribute VB_Name = "mod_graph_QRCode"
'https://zingl.github.io/

'copy this code into report format section to activate qrcode or others code -----
'Option Explicit

'Private Sub Detailbereich_Format(Cancel As Integer, FormatCount As Integer)
'Dim ctrl As control
'For Each ctrl In Me
'    If TypeOf ctrl Is TextBox Then
'        If InStr(LCase(ctrl.Tag), "code128") Then drawCode128 ctrl
'        If InStr(LCase(ctrl.Tag), "datamatrix") Then drawDataMatrix ctrl
'        If InStr(LCase(ctrl.Tag), "qrcode") Then drawQuickResponse ctrl
'        If InStr(LCase(ctrl.Tag), "aztec") Then drawAztec ctrl
'    End If
'Next ctrl
'End Sub
'---------------------------------------------------------------------------------




Option Explicit
Dim mat() As Byte, kanji As String ' matrix of QR, unicode to kanji conversion

' QR Code 2005 bar code symbol creation according ISO/IEC 18004:2006
'   param text: barcode data
'   param level optional: quality level LMQH
'   param version optional: minimum version size (-3:M1, -2:M2, .. 1, .. 40)
'  called from report Detail_Format() to draw DataMatrix barcode QR and micro QR bar code symbol
Public Sub drawQuickResponse(Text As TextBox, Optional level As String, Optional version As Integer = 1)
Dim Mode As Byte, lev As Byte, S As Long, A As Long, blk As Long, ec As Long
Dim i As Long, j As Long, k As Long, l As Long, c As Long, b As Long
Dim W As Long, X As Long, Y As Long, v As Double, el As Long, eb As Long
Dim m As Long, P As Variant, ecw As Variant, ecb As Variant
Dim rpt As Report, txt As String, k1 As String, k2 As String, r As Double
Const alpha = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"
Set rpt = Text.Parent
On Error Resume Next ' get unicode to kanji conversion string
kanji = "  ": kanji = CurrentDb.Properties("kanji")
'add kanji property to DB by: CurrentDb.Properties.Append CurrentDb.CreateProperty("kanji", dbText, kanji)
On Error GoTo failed

If level = "" Then
    i = InStr(LCase(Text.Tag), "qrcode") ' get quality level from name postfix
    If (i > 0 And i + 5 < Len(Text.Tag)) Then level = Mid(Text.Tag, i + 6, 1)
End If
txt = Text: lev = (InStr("LMQHlmqh0123", level) - 1) And 3
' error correction words L,M,Q,H and blocks L,M,Q,H for all version sizes (99=N/A)
ecw = Array(Array(2, 5, 6, 8, 7, 10, 15, 20, 26, 18, 20, 24, 30, 18, 20, 24, 26, 30, 22, 24, 28, 30, 28, 28, 28, 28, 30, 30, 26, 28, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30), _
    Array(99, 6, 8, 10, 10, 16, 26, 18, 24, 16, 18, 22, 22, 26, 30, 22, 22, 24, 24, 28, 28, 26, 26, 26, 26, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28), _
    Array(99, 99, 99, 14, 13, 22, 18, 26, 18, 24, 18, 22, 20, 24, 28, 26, 24, 20, 30, 24, 28, 28, 26, 30, 28, 30, 30, 30, 30, 28, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30), _
    Array(99, 99, 99, 99, 17, 28, 22, 16, 22, 28, 26, 26, 24, 28, 24, 28, 22, 24, 24, 30, 28, 28, 26, 28, 30, 24, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30))
ecb = Array(Array(1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 4, 6, 6, 6, 6, 7, 8, 8, 9, 9, 10, 12, 12, 12, 13, 14, 15, 16, 17, 18, 19, 19, 20, 21, 22, 24, 25), _
    Array(1, 1, 1, 1, 1, 1, 1, 2, 2, 4, 4, 4, 5, 5, 5, 8, 9, 9, 10, 10, 11, 13, 14, 16, 17, 17, 18, 20, 21, 23, 25, 26, 28, 29, 31, 33, 35, 37, 38, 40, 43, 45, 47, 49), _
    Array(1, 1, 1, 1, 1, 1, 2, 2, 4, 4, 6, 6, 8, 8, 8, 10, 12, 16, 12, 17, 16, 18, 21, 20, 23, 23, 25, 27, 29, 34, 34, 35, 38, 40, 43, 45, 48, 51, 53, 56, 59, 62, 65, 68), _
    Array(1, 1, 1, 1, 1, 1, 2, 4, 4, 4, 5, 6, 8, 8, 11, 11, 16, 16, 18, 16, 19, 21, 25, 25, 25, 34, 30, 32, 35, 37, 40, 42, 45, 48, 51, 54, 57, 60, 63, 66, 70, 74, 77, 81))

For j = Len(txt) To 1 Step -1
    c = AscW(Mid(txt, j, 1))  ' not ascii or Kanji -> use utf-8 for reader conformity
    If ((c And -128) = 128) Or ((c And -256) <> 0 And InStr(Len(kanji) / 2 + 1, kanji, ChrW(c)) = 0) Then
        txt = Left(txt, j - 1) + utf16to8(Mid(txt, j, 1)) + Mid(txt, j + 1)
    End If
Next j
version = IIf(version < Mode - 3, Mode - 3, version) - 1
Do ' compute minimum QR size
    Dim enc(10000) As Integer, n As Long
    version = version + 1 ' increase version till message fits
    If version + 3 > UBound(ecb(0)) Then Err.Raise 515, "QRCode", "Message too long"
    If version < 2 Or version = 10 Or version = 27 Then ' recompute stream
        Dim numHead As Integer, alphaHead As Integer, byteHead As Integer ' segment header sizes
        Const NUM_M = 0, ALPHA_M = 1, BYTE_M = 2, KANJI_M = 3 ' encoding modes
        numHead = (IIf(version > 0, 4, version + 3) + cib(version, 0)) * 6 ' measured in 1/6 bits
        alphaHead = (IIf(version > 0, 4, version + 3) + cib(version, 1)) * 6
        byteHead = (IIf(version > 0, 4, version + 3) + cib(version, 2)) * 6
        Dim byteBits(10000) As Long, alphaBits(10000) As Long, numBits(10000) As Long ' len in 1/6 bits
        i = 0: n = 100000: A = n: b = n ' init values
        For j = Len(txt) To 0 Step -1  ' compute optimal encoding
            If j < Len(txt) Then ' calculate the bit table by dynamic programming
                c = AscW(Mid(txt, j + 1, 1))
                If c And -256 Then ' Kanji
                    i = 0: n = 100000: A = n: b = b ' init values
                Else
                    n = n + IIf(c > 47 And c < 58, 20, 10000) ' 10/3 bits per char
                    A = A + IIf(InStr(alpha, ChrW(c)), 33, 10000)  ' 11/2 bits per char
                    b = b + 48 ' 8 bits per byte
                    i = IIf(A < b, A, b): i = ((IIf(i < n, i, n) + 5) \ 6) * 6 ' round up fractional bits
                End If
            End If
            n = IIf(i + numHead < n, i + numHead, n): numBits(j) = n ' switch to shorter encoding
            A = IIf(i + alphaHead < A, i + alphaHead, A): alphaBits(j) = A
            b = IIf(i + byteHead < b, i + byteHead, b): byteBits(j) = b
        Next j
        enc(0) = 0: el = 0: eb = 0 ' start encoding with mode of fewest bits
        Mode = IIf(AscW(Mid(txt, 1, 1)) And -256, KANJI_M, IIf(b < A And b < n, BYTE_M, IIf(A < n, ALPHA_M, NUM_M)))
        i = 0
        For j = 1 To Len(txt) ' calc optimal encoding for each char
            b = IIf(Mode = NUM_M, numBits(j) - numHead, IIf(Mode = ALPHA_M, alphaBits(j) - alphaHead, byteBits(j) - byteHead))
            c = 0: If j < Len(txt) Then c = AscW(Mid(txt, j + 1, 1))
            If j = Len(txt) Or (c And -256) <> 0 Then
                n = KANJI_M ' mode of next char
            ElseIf Mode = KANJI_M Then ' restart with mode of fewest bits
                n = IIf(byteBits(j) <= IIf(alphaBits(j) < numBits(j), alphaBits(j), numBits(j)), BYTE_M, IIf(alphaBits(j) <= numBits(j), ALPHA_M, NUM_M))
            ElseIf c > 47 And c < 58 And (Mode = NUM_M Or ((numBits(j + 1) + 25) \ 6) * 6 = b) Then
                n = NUM_M ' switch to shortest encoding
            ElseIf InStr(alpha, ChrW(c)) > 0 And (Mode = ALPHA_M Or ((alphaBits(j + 1) + 38) \ 6) * 6 = b) Then
                n = ALPHA_M
            Else
                n = BYTE_M
            End If
            If Mode <> n Or j = Len(txt) Then ' mode changes -> encode previous
                If version < -1 And version + 3 < Mode Then el = 40 ' block illegal modes
                If version > 0 Then push 2& ^ Mode, 4, enc, el, eb ' mode indicator, QR
                If version <= 0 Then push Mode, version + 3, enc, el, eb ' mode indicator micro QR
                push j - i, cib(version, Mode), enc, el, eb ' character count indicator
                Select Case Mode
                Case NUM_M ' encode numeric data
                    For i = i To j - 3 Step 3
                        push val(Mid(txt, i + 1, 3)), 10, enc, el, eb ' 3 digits in 10 bits
                    Next i
                    If i < j Then push val(Mid(txt, i + 1, j - i)), 3 * (j - i) + 1, enc, el, eb
                Case ALPHA_M ' encode alphanumeric data
                    For i = i To j - 2 Step 2 ' 2 chars in 11 bits
                        push InStr(alpha, Mid(txt, i + 1, 1)) * 45 + InStr(alpha, Mid(txt, i + 2, 1)) - 46, 11, enc, el, eb
                    Next i
                    If i < j Then push InStr(alpha, Mid(txt, i + 1, 1)) - 1, 6, enc, el, eb
                Case BYTE_M ' encode binary data
                    For i = i To j - 1
                        push AscW(Mid(txt, i + 1, 1)), 8, enc, el, eb ' 1 char in 8 bits
                    Next i
                Case KANJI_M ' encode Kanji
                    For i = i To j - 1
                        c = InStr(Len(kanji) / 2 + 1, kanji, Mid(txt, i + 1, 1)) - Len(kanji) / 2
                        c = (AscW(Mid(kanji, c, 1)) And &H3FFF) - 320 ' unicode to shift JIS X 2008
                        push (c \ 256) * 192 + (c And 255), 13, enc, el, eb ' 1 char in 13 bits
                    Next i
                End Select
                i = j: Mode = n ' next segment
            End If
        Next j
        m = 1
    End If
    S = version * IIf(version < 1, 2, 4) + 17 ' symbol size
    A = IIf(version < 2, 0, version \ 7 + 2) ' # of align pattern
    l = (S - 1) * (S - 1) - (5 * A - 1) * (5 * A - 1) ' total bits - align - timing
    l = l - IIf(version < 1, 59, IIf(version < 2, 191, IIf(version < 7, 136, 172))) ' finder, version, format
    i = IIf(version < 1, (version And 1) * 4, 0)  ' M1+M3: +4 bits
    c = ecb(lev)(version + 3) * ecw(lev)(version + 3) ' error correction
Loop While (l And -8) - c * 8 < el * 8 + eb + i ' message fits in version

If level = "" Then
    For lev = lev To 2 ' increase security level if data still fits
        c = ecb(lev + 1)(version + 3) * ecw(lev + 1)(version + 3)
        If (l And -8) - c * 8 < el * 8 + eb + i Then Exit For
    Next lev
End If
blk = ecb(lev)(version + 3) ' # of error correction blocks
ec = ecw(lev)(version + 3) ' # of error correction bytes
l = l \ 8 - ec * blk ' data capacity
W = l \ blk ' # of words in group 1
b = blk + W * blk - l ' # of blocks in group 1

If (version And -3) = -3 And el + 1 = l Then enc(el) = enc(el) \ 16 ' M1,M3: shift high bits to low nibble
If l > el + 1 Then push 0, IIf(version > 0, 4, version + 6), enc, el, eb ' terminator
If eb = 0 Or l <= el Then el = el - 1  ' bit padding
i = 236
For el = el + 1 To l - 1 ' byte padding
    enc(el) = IIf((version And -3) = -3 And el = l - 1, 0, i)
    i = i Xor 236 Xor 17
Next el

ReDim rs(ec + 1) As Integer ' compute Reed Solomon error detection and correction
Dim lG(256) As Integer, ex(255) As Integer ' log/exp table
j = 1
For i = 0 To 254
    ex(i) = j: lG(j) = i ' compute log/exp table of Galois field
    j = j + j: If j > 255 Then j = j Xor 285 ' GF polynomial a^8+a^4+a^3+a^2+1 = 100011101b = 285
Next i
rs(0) = 1 ' compute RS generator polynomial
For i = 0 To ec - 1
    rs(i + 1) = 0
    For j = i + 1 To 1 Step -1
        rs(j) = rs(j) Xor ex((lG(rs(j - 1)) + i) Mod 255)
    Next j
Next i
eb = el: k = 0
For c = 1 To blk  ' compute RS correction data for each block
    For i = IIf(c <= b, 1, 0) To W
        X = enc(eb) Xor enc(k)
        For j = 1 To ec
            enc(eb + j - 1) = enc(eb + j) Xor IIf(X, ex((lG(rs(j)) + lG(X)) Mod 255), 0)
        Next j
        k = k + 1
    Next i
    eb = eb + ec
Next c

' fill QR matrix
ReDim mat(S + 1, S + 1) As Byte
For i = 8 To S - 1 ' timing pattern
    mat(i, IIf(version < 1, 0, 6)) = i And 1 Xor 3
    mat(IIf(version < 1, 0, 6), i) = i And 1 Xor 3
Next i
If version > 6 Then ' reserve version area
    For i = 0 To 17
        mat(i \ 3, S - 11 + i Mod 3) = 2
        mat(S - 11 + i Mod 3, i \ 3) = 2
    Next i
End If
If A < 2 Then A = IIf(version < 1, 1, 2)
For X = 1 To A ' layout finder/align pattern
    For Y = 1 To A
        If X = 1 And Y = 1 Then ' finder upper left
            i = 0: j = 0
            P = Array(383, 321, 349, 349, 349, 321, 383, 256, 511)
        ElseIf X = 1 And Y = A Then  ' finder lower left
            i = 0: j = S - 8
            P = Array(256, 383, 321, 349, 349, 349, 321, 383)
        ElseIf X = A And Y = 1 Then  ' finder upper right
            i = S - 8: j = 0
            P = Array(254, 130, 186, 186, 186, 130, 254, 0, 255)
        Else ' alignment grid
            c = 2 * Int(2 * (version + 1) / (1 - A)) ' pattern spacing
            i = IIf(X = 1, 4, S - 9 + c * (A - X))
            j = IIf(Y = 1, 4, S - 9 + c * (A - Y))
            P = Array(31, 17, 21, 17, 31) ' alignment pattern
        End If
        If version <> 1 Or X + Y < 4 Then ' no align pattern for version 1
            For c = 0 To UBound(P) ' set fixed pattern, reserve space
                m = P(c): k = 0
                Do
                    mat(i + k, j + c) = (m And 1) Or 2
                    m = m \ 2: k = k + 1
                Loop While 2 ^ k <= P(0)
            Next c
        End If
    Next Y
Next X
X = S: Y = S - 1 ' layout codewords
For i = 0 To eb - 1
    c = 0: k = 0: j = W + 1 ' interleave data
    If i >= el Then
        c = el: k = el: j = ec ' interleave checkwords
    ElseIf i + blk - b >= el Then
        c = -b: k = c ' interleave group 2 last bytes
    ElseIf (i Mod blk) >= b Then
        c = -b ' interleave group 2
    Else
        j = j - 1 ' interleave group 1
    End If
    c = enc(c + ((i - k) Mod blk) * j + (i - k) \ blk) ' interleave data
    For j = IIf((-3 And version) = -3 And i = el - 1, 3, 7) To 0 Step -1 ' M1,M3: 4 bit
        k = IIf(version > 0 And X < 6, 1, 0) ' skip vertical timing pattern
        Do ' advance x,y
            X = X - 1
            If 1 And (X + 1) Xor k Then
                If S - X - k And 2 Then
                    If Y > 0 Then Y = Y - 1: X = X + 2 ' up, top turn
                Else
                    If Y < S - 1 Then Y = Y + 1: X = X + 2 ' down, bottom turn
                End If
            End If
        Loop While mat(X, Y) And 2 ' skip reserved area
        If c And 2 ^ j Then mat(X, Y) = 1
    Next j
Next i

m = 0: A = 1000000 ' data masking
ecb = Array(Array(Array(1, 1, 1, 1, 1)), Array(Array(0, 0, 0, 0, 0)), _
        Array(Array(1, 1), Array(1, 1)), Array(Array(0, 0), Array(0, 0)), _
        Array(Array(1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0)), Array(Array(0, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1)), _
        Array(Array(1))) ' penalty pattern
For k = 0 To IIf(version < 1, 3, 7)
    c = 0
    If version < 1 Then ' penalty micro QR
        X = 1: Y = 1
        For i = 1 To S - 1
            X = X - getPattern(i, S - 1, k, version)
            Y = Y - getPattern(S - 1, i, k, version)
        Next i
        c = IIf(X > Y, 16 * X + Y, X + 16 * Y)
    Else ' penalty QR
        For W = 0 To UBound(ecb) ' look for pattern
            ecw = ecb(W): l = 0
            For Y = 0 To S - UBound(ecw) - 1
                P = Array(3, 3, 40, 0, 3, 0, 40, 0) ' N1, N2, N3, N4; horizontal/vertical
                For X = 0 To S - UBound(ecw(0)) - 1
                    'If y + UBound(ecw) > s Or x + UBound(ecw(0)) > s Then Exit For
                    i = 1: j = 1 - (W \ 2 And 1)
                    For n = 0 To UBound(ecw)
                        For b = 0 To UBound(ecw(n))
                            If getPattern(X + b, Y + n, k, version) <> ecw(n)(b) Then i = 0 ' horizontal
                            If (W And 2) = 0 Then If getPattern(Y + n, X + b, k, version) <> ecw(n)(b) Then j = 0 ' vertical
                        Next b
                    Next n
                    c = c + P(W \ 2) * i + P(W \ 2 + 4) * j ' add penalty
                    If W < 2 Then P(0) = 3 - 2 * i: P(4) = 3 - 2 * j ' adjacents: 3-1-1...
                    l = l + i ' N4 dark count
                Next X
            Next Y
        Next W
        c = c + Abs(10 - 20 * l \ S \ S) * 10 ' N4 darks
    End If
    If c < A Then A = c: m = k ' take mask of lower penalty
Next k

' add format information, code level and mask
j = IIf(version = -3, m, IIf(version < 1, (2 * version + lev + 5) * 4 + m, ((5 - lev) And 3) * 8 + m))
j = j * 1024: k = j
For i = 4 To 0 Step -1 ' BCH error correction: 5 data, 10 error bits
    If j >= 1024 * 2 ^ i Then j = j Xor 1335 * 2 ^ i
Next i ' generator polynom: x^10+x^8+x^5+x^4+x^2+x+1 = 10100110111b = 1335
k = k Xor j Xor IIf(version < 1, 17477, 21522) ' XOR masking
For j = 0 To 14 ' layout format information
    If version < 1 Then
        mat(IIf(j < 8, 8, 15 - j), IIf(j < 8, j + 1, 8)) = k And 1 Xor 2 ' micro QR
    Else
        mat(IIf(j < 8, S - j - 1, IIf(j = 8, 7, 14 - j)), 8) = k And 1 Xor 2 ' QR horizontal
        mat(8, IIf(j < 6, j, IIf(j < 8, j + 1, S + j - 15))) = k And 1 Xor 2 ' vertical
    End If
    k = k \ 2
Next j
If version > 6 Then ' add version information
    k = version * 4096&
    For i = 5 To 0 Step -1 ' BCH error correction: 6 data, 12 error bits
        If k >= 4096 * 2 ^ i Then k = k Xor 7973 * 2 ^ i
    Next i ' generator polynom: x^12+x^11+x^10+x^9+x^8+x^5+x^2+1 = 1111100100101b = 7973
    k = k Xor (version * 4096&)
    For j = 0 To 17 ' layout version information
        mat(j \ 3, S + j Mod 3 - 11) = k And 1 Xor 2
        mat(S + j Mod 3 - 11, j \ 3) = k And 1 Xor 2
        k = k \ 2
    Next j
End If

rpt.ScaleMode = 1 ' scale barcode to textbox
X = IIf(Text.Width < Text.Height, 0, Text.Height - Text.Width) / 2 - Text.Left
Y = IIf(Text.Width < Text.Height, Text.Width - Text.Height, 0) / 2 - Text.Top
r = IIf(Text.Width < Text.Height, Text.Width, Text.Height) / S
rpt.Scale (X / r, Y / r)-((rpt.ScaleWidth + X) / r, (rpt.ScaleHeight + Y) / r)

For Y = 0 To S - 1 ' layout barcode
    For X = 0 To S - 1
        If getPattern(X, Y, m, version) Then ' apply mask
            rpt.Line (X, Y)-Step(1, 1), Text.ForeColor, BF
        End If
    Next X
Next Y

failed:
Text.Visible = Err.Number ' hide if no error
If Err.Number Then Debug.Print "ERROR: " & Err.DESCRIPTION
End Sub

' get QR pattern mask
Private Function getPattern(ByVal X As Long, ByVal Y As Long, ByVal m As Integer, ByVal version As Integer) As Integer
Dim i As Integer, j As Long
If version < 1 Then m = Array(1, 4, 6, 7)(m) ' mask pattern of micro QR
i = mat(X, Y)
If i < 2 Then
    Select Case m
    Case 0: j = (X + Y) And 1
    Case 1: j = Y And 1
    Case 2: j = X Mod 3
    Case 3: j = (X + Y) Mod 3
    Case 4: j = (X \ 3 + Y \ 2) And 1
    Case 5: j = ((X * Y) And 1) + (X * Y) Mod 3
    Case 6: j = (X * Y + (X * Y) Mod 3) And 1
    Case 7: j = (X + Y + (X * Y) Mod 3) And 1
    End Select
    If j = 0 Then i = i Xor 1 ' invert only data according mask
End If
getPattern = i And 1
End Function

' get # of bits of count indicator
Private Function cib(ByVal ver As Integer, ByVal m As Integer) As Integer
    cib = IIf(ver < 1, ver + ((19 - 2 * m) \ 3), Array(Array(10, 12, 14), Array(9, 11, 13), Array(8, 16, 16), Array(8, 10, 12))(m)((ver + 7) \ 17))
End Function
' add data to bit stream
Private Sub push(ByVal val As Long, ByVal bits As Integer, ByRef enc() As Integer, ByRef el As Long, ByRef eb As Long)
    val = val * 256
    eb = eb + bits
    enc(el) = enc(el) Or (val \ (2& ^ eb))
    While eb > 7
        el = el + 1
        eb = eb - 8
        enc(el) = (val \ (2& ^ eb)) And 255
    Wend
End Sub
