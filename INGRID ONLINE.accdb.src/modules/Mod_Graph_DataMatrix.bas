Attribute VB_Name = "mod_graph_DataMatrix"
'https://zingl.github.io/
Option Explicit

' Data Matrix symbol creation according ISO/IEC 16022:2006
'   param text: barcode data
'  called from report Detail_Format() to draw DataMatrix barcode
Public Sub drawDataMatrix(Text As Object)
Dim enc As String, en As String, el As Long, k As Variant, l As Integer
Dim h As Long, W As Long, nc As Byte, nr As Byte
Dim fw As Integer, fh As Integer, i As Long, j As Long, b As Double
Dim c As Long, r As Double, S As Long, X As Long, Y As Long
Dim rpt As Report, txt As String
On Error GoTo failed
Set rpt = Text.Parent

txt = IIf(Text = "", " ", utf16to8(Text)): l = Len(txt)

Dim Latch As Variant, count As Variant ' actual costs (start by latch only)
Latch = Array(0, 24, 24, 24, 21, 25) ' latch+unlatch costs
count = Array(0, 12, 12, 12, 12, 25)
Dim P As Integer, cm As Integer, nm As Integer ' current / next mode
ReDim bytes(0 To l, 0 To 5) As Long  ' cost table in 1/12 bytes
Dim cw As Double, ce As Long

For i = 0 To 5: bytes(l, i) = count(i): Next i ' compute byte costs..
For P = l To 1 Step -1 ' ..by dynamic programming
    c = 10000
    For i = 0 To 5
        count(i) = count(i) + cost(i, AscW(Mid(txt, P, 1))) ' accumulate costs from back
        If count(i) + 11 < c Then c = ((count(i) + 11) \ 12) * 12 ' get minimum in full bytes
    Next i ' ascii mode: if non digit round up to full byte
    If cost(0, AscW(Mid(txt, P, 1))) > 6 Then count(0) = ((count(0) + 11) \ 12) * 12
    For i = 0 To 5 ' latch to shorter mode?
        If c + Latch(i) < count(i) Then count(i) = c + Latch(i)
    Next i
    For i = 0 To 5: bytes(P - 1, i) = count(i): Next i ' record costs
Next P
P = 0
Do ' encode text
    If (P + IIf(cm = 4, 3, IIf(cm < 4, 2, 0)) >= l) Then ' finished, return to ascii
        nm = 0
    Else
        c = bytes(P, cm) - Latch(cm)
        For i = 5 To 0 Step -1 ' check if a mode is shorter
            If ((bytes(P + 1, i) + cost(i, AscW(Mid(txt, P + 1, 1))) + 11) \ 12) * 12 = c Then nm = i ' change to shorter mode
        Next i
    End If
    If cm <> nm And cm > 0 Then ' return to ascii mode
        If cm < 4 Then ' unlatch c40/text/x12
            enc = enc + Chr(254)
        ElseIf cm = 4 Then ' unlatch edifact, add last byte
            enc = enc + Chr(31 Or cw And 255)
        Else ' encode base256 in 255 state rand algo
            If ce > 249 Then enc = enc + Chr((ce \ 250 + 250 + (149 * (Len(enc) + 1)) Mod 255) And 255) ' high
            enc = enc + Chr((ce Mod 250 + (149 * (Len(enc) + 1)) Mod 255 + 1) And 255) ' encode low length
            For ce = ce To 1 Step -1 ' encode base256 data
                enc = enc + Chr((AscW(Mid(txt, P - ce + 1, 1)) + (149 * (Len(enc) + 1)) Mod 255 + 1) And 255)
            Next ce
        End If
    End If

    If P >= l Then Exit Do ' encoding finished
    If cm <> nm Then cw = 0: ce = 0 ' reset packing
    If cm <> nm And nm > 0 Then enc = enc + Chr(Array(230, 239, 238, 240, 231)(nm - 1)) ' latch to c40/text/x12/edifact/base256

    If nm = 0 Then ' encode ascii
        P = P + 1: c = AscW(Mid(txt, P, 1))
        i = (c - 48) And 255: r = 0
        If P < l Then r = AscW(Mid(txt, P + 1, 1))
        If i < 10 And ((r - 48) And 255) < 10 Then
            P = P + 1
            enc = enc + Chr(i * 10 + AscW(Mid(txt, P, 1)) - 48 + 130) ' two digits
        Else
            If c > 127 Then enc = enc + Chr(235) ' upper shift
            enc = enc + Chr((c And 127) + 1) ' encode data
        End If
        If cm = 4 Or ce < 0 Then ce = ce - 1 ' count post edifact chars
    ElseIf nm < 4 Then ' encode c40/text/x12
        Dim sets As Variant ' sets contains character range dupels: upper value, shift*4+set-1
        sets = Array(Array(31, 0, 32, 119, 47, 133, 57, 179, 64, 173, 90, 207, 95, 277, 127, 386, 255, 1), _
                Array(31, 0, 32, 119, 47, 133, 57, 179, 64, 173, 90, 258, 95, 277, 122, 335, 127, 386, 255, 1), _
                Array(13, 55, 32, 119, 42, 167, 57, 179, 62, 243, 90, 207, 255, 3))(nm - 1) ' set c40/text/x12
        Do
            P = P + 1: c = AscW(Mid(txt, P, 1))
            If c > 127 Then
                cw = cw * 40 + 1: cw = cw * 40 + 30
                ce = ce + 2: c = c - 128 ' hi bit in C40 & TEXT
            End If
            i = 0: While c > sets(i): i = i + 2: Wend ' select char set
            If (sets(i + 1) And 3) < 3 Then cw = cw * 40 + (sets(i + 1) And 3): ce = ce + 1 ' select set
            cw = cw * 40 + (c - sets(i + 1) \ 4): ce = ce + 1
            Do While ce > 2 ' pack 3 chars in 2 bytes
                ce = ce - 3: r = 40& ^ ce
                c = Int(cw / r) + 1
                enc = enc + Chr((c \ 256) And 255) + Chr(c And 255)
                cw = cw - c * r + r
            Loop
        Loop While ce > 0
    ElseIf nm = 4 Then ' encode edifact
        If ce > 0 Then P = P + 1: enc = enc + Chr((255 And cw) + (AscW(Mid(txt, P, 1)) And 63)) ' 3rd byte
        cw = 0
        For ce = 0 To 2
            P = P + 1: cw = 64 * (cw + (AscW(Mid(txt, P, 1)) And 63))
        Next ce
        enc = enc + Chr(cw \ 65536) ' 4 chars in 3 bytes
        enc = enc + Chr((cw \ 256) And 255)
    Else
        P = P + 1: ce = ce + 1 ' count base256 chars
    End If
    cm = nm
Loop

If ce = -1 Or (cm > 0 And cm < 5) Then nm = 1 ' c40/text/x12/edifact unlatch removable

' compute symbol size
nc = 1: nr = 1: j = -1: b = 1: el = Len(enc) ' symbol size, regions, region size
If Text.Width * 3 > Text.Height * 4 And el < 50 Then ' rectangular pattern ?
    k = Array(16, 7, 28, 11, 24, 14, 32, 18, 32, 24, 44, 28) ' symbol width, checkwords
    Do
        W = k(j + 1) ' width w/o finder pattern
        h = 6 + (j And 12) ' height
        l = W * h / 8: j = j + 2 ' # of bytes in symbol
    Loop While l - k(j) < el ' data fit in symbol ?
    If W > 25 Then nc = 2 ' column regions
Else ' square symbol
    W = 6: h = W
    i = 2 ' size increment
    k = Array(5, 7, 10, 12, 14, 18, 20, 24, 28, 36, 42, 48, 56, 68, 84, _
            112, 144, 192, 224, 272, 336, 408, 496, 620) ' checkwords
    Do
        If j = UBound(k) Then Err.Raise 513, "DataMatrix Barcode", "Message too long."
        j = j + 1
        If W > 11 * i Then i = 4 + i And 12 ' advance increment
        W = W + i: h = W
        l = (W * h) \ 8
    Loop While l - k(j) < el
    If W > 27 Then nr = 2 * (W \ 54) + 2: nc = nr ' regions
    If l > 255 Then b = 2 * (l \ 512) + 2 ' blocks
End If
S = k(j) ' checkwords
If l - S = el - nm Then ' remove last unlatch to fit in smaller symbol
    c = (Asc(Right(enc, 1)) - 1) And 63
    el = el - nm: enc = Left(enc, el)
    If ce = -1 Then ' replace edifact unlatch by char
        c = Asc(Right(enc, 1)) Xor c Xor 31
        enc = Left(enc, el - 1) & Chr(c)
    End If
End If
fw = W / nc: fh = h / nr ' region size

If el < l - S Then enc = enc + Chr(129): el = el + 1 ' first padding
Do While el < l - S ' add more padding
    el = el + 1
    enc = enc + Chr((((149 * el) Mod 253) + 130) Mod 254)
Loop

enc = enc + Space(S) ' compute Reed Solomon error detection and correction
Dim rs(70) As Integer, rc(70) As Integer ' RS code
Dim lG(256) As Integer, ex(255) As Integer ' log/exp table
S = S / b: j = 1
For i = 0 To 254
    ex(i) = j: lG(j) = i ' compute log/exp table of Galois field
    j = j + j: If j > 255 Then j = j Xor 301 ' GF polynomial a^8+a^5+a^3+a^2+1 = 100101101b = 301
Next i
rs(S + 1) = 0 ' compute RS generator polynomial
For i = 0 To S
    rs(S - i) = 1
    For j = S - i + 1 To S
        rs(j) = rs(j + 1) Xor ex((lG(rs(j)) + i) Mod 255)
    Next j
Next i
For c = 1 To b ' compute RS correction data for each block
    For i = 0 To S: rc(i) = 0: Next i
    For i = c To el Step b
        X = rc(0) Xor Asc(Mid(enc, i, 1))
        For j = 1 To S
            rc(j - 1) = rc(j) Xor IIf(X, ex((lG(rs(j)) + lG(X)) Mod 255), 0)
        Next j
    Next i
    For i = 0 To S - 1 ' add interleaved correction data
        Mid(enc, el + c + i * b, 1) = Chr(rc(i))
    Next i
Next c

rpt.ScaleMode = 1 ' layout barcode, scale barcode to textbox
X = Text.Width * (h + 2 * nr): Y = Text.Height * (W + 2 * nc)
i = IIf(X < Y, 0, Text.Width * (Y - X) / X) / 2 - Text.Left
j = IIf(X < Y, Text.Height * (X - Y) / Y, 0) / 2 - Text.Top
r = Text.Width * Text.Height / IIf(X > Y, X, Y)
rpt.Scale (i / r, j / r)-((rpt.ScaleWidth + i) / r, (rpt.ScaleHeight + j) / r)

For i = 0 To h + 2 * nr - 1 Step fh + 2 ' finder horizontal
    For j = 0 To W + 2 * nc - 1
        rpt.Line (j, i + fh + 1)-Step(1, 1), Text.ForeColor, BF
        If (j And 1) = 0 Then rpt.Line (j, i)-Step(1, 1), Text.ForeColor, BF
    Next j
Next i
For i = 0 To W + 2 * nc - 1 Step fw + 2 ' finder vertical
    For j = 0 To h - 1
        rpt.Line (i, j + (j \ fh) * 2 + 1)-Step(1, 1), Text.ForeColor, BF
        If (j And 1) = 1 Then rpt.Line (i + fw + 1, j + (j \ fh) * 2)-Step(1, 1), Text.ForeColor, BF
    Next j
Next i
'layout data
S = 2: c = 0: r = 4 ' step,column,row of data position
For i = 1 To l
    If (r = h - 3 And c = -1) Then ' corner A
        k = Array(W, 6 - h, W, 5 - h, W, 4 - h, W, 3 - h, W - 1, 3 - h, 3, 2, 2, 2, 1, 2)
    ElseIf r = h + 1 And c = 1 And (W And 7) = 0 And (h And 7) = 6 Then ' corner D
        k = Array(W - 2, -h, W - 3, -h, W - 4, -h, W - 2, -1 - h, W - 3, -1 - h, W - 4, -1 - h, W - 2, -2, -1, -2)
    Else
        If r = 0 And c = W - 2 And (W And 3) Then i = i - 1: GoTo continue ' corner B
        If r < 0 Or c >= W Or r >= h Or c < 0 Then ' outside
            S = -S: r = r + 2 + S / 2: c = c + 2 - S / 2 ' turn around
            Do While r < 0 Or c >= W Or r >= h Or c < 0
                r = r - S: c = c + S
            Loop
        End If
        If r = h - 2 And c = 0 And (W And 3) Then ' corner B
            k = Array(W - 1, 3 - h, W - 1, 2 - h, W - 2, 2 - h, W - 3, 2 - h, W - 4, 2 - h, 0, 1, 0, 0, 0, -1)
        ElseIf r = h - 2 And c = 0 And (W And 7) = 4 Then ' corner C
            k = Array(W - 1, 5 - h, W - 1, 4 - h, W - 1, 3 - h, W - 1, 2 - h, W - 2, 2 - h, 0, 1, 0, 0, 0, -1)
        ElseIf r = 1 And c = W - 1 And (W And 7) = 0 And (h And 7) = 6 Then ' omit corner D
            i = i - 1: GoTo continue
        Else
            k = Array(0, 0, -1, 0, -2, 0, 0, -1, -1, -1, -2, -1, -1, -2, -2, -2) ' nominal layout
        End If
    End If
    el = Asc(Mid(enc, i, 1))
    For j = 0 To 15 Step 2 ' layout each bit
        If el And 1 Then
            X = c + k(j): Y = r + k(j + 1)
            If X < 0 Then X = X + W: Y = Y + 4 - ((W + 4) And 7) ' wrap around
            If Y < 0 Then Y = Y + h: X = X + 4 - ((h + 4) And 7)
            rpt.Line (X + 2 * (X \ fw) + 1, Y + 2 * (Y \ fh) + 1)-Step(1, 1), Text.ForeColor, BF
        End If
        el = el \ 2
    Next j
continue:
    r = r - S: c = c + S ' diagonal step
Next i
For i = (W And -4) + 1 To W ' unfilled corner
    rpt.Line (i, i)-Step(1, 1), Text.ForeColor, BF
Next i

failed:
Text.Visible = Err.Number ' hide if no error
If Err.Number Then Debug.Print "ERROR: " & Err.DESCRIPTION
End Sub

'compute char cost in 1/12 bytes for mode..
Private Function cost(ByVal m As Integer, ByVal c As Integer) As Integer
Dim h As Integer
Select Case m
Case 0 ' ascii
    cost = IIf(((c - 48) And 255) < 10, 6, IIf(c < 128, 12, 24))
Case 1 ' c40
    If c > 127 Then h = cost(m, c And 127)
    cost = IIf(((c - 48) And 255) < 10 Or ((c - 65) And 255) < 26 Or c = 32, 8, IIf(c < 128, 16, 16 + h))
Case 2 ' text
    If c > 127 Then h = cost(m, c And 127)
    cost = IIf(((c - 48) And 255) < 10 Or ((c - 97) And 255) < 26 Or c = 32, 8, IIf(c < 128, 16, 16 + h))
Case 3 ' x12
    cost = IIf(((c - 48) And 255) < 10 Or ((c - 65) And 255) < 26 Or c = 32 Or c = 13 Or c = 62 Or c = 42, 8, 10000)
Case 4 ' edifact
    cost = IIf(c >= 32 And c < 95, 9, 10000)
Case 5 ' base256
    cost = 12
End Select
End Function
