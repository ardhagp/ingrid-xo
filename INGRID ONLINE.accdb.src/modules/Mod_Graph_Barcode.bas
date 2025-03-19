﻿Attribute VB_Name = "mod_graph_Barcode"
'https://zingl.github.io/
' Barcode symbol creation in MS office Access reports by VBA
' Author: alois zingl
' Version: V20.30 june 2020
' Copyright MIT license open-source license software
' https://zingl.github.io/
'
' Description: the indention of this library is a short and compact implementation to create barcodes
'  of Code 128, Data Matrix, (micro) QR or Aztec symbols so it could be easily adapted for individual requirements.
'  Each TextBox in reports containing 'Aztec','Code128', 'DataMatrix' or 'QRCode' in the name
'  is replaced by the corresponding barcode image.
'  Individual settings are possible but require adjustments in the Sub Detail_Format().
'  The smallest bar code symbol fitting the data is automatically selected,
'  but no size optimization for mixed data types in one code is done.
' Functions:
'   drawAztec(text as TextBox, Optional security as integer, Optional layers as integer)
'   drawCode128(text As TextBox)
'   drawDataMatrix(text As TextBox)
'   drawQuickResponse(text As TextBox, Optional level As String, Optional version As Integer = 1)
'
Option Explicit

' convert UTF-16 (Windows) to UTF-8
Public Function utf16to8(ByVal Text As String) As String
Dim i As Integer, c As Long
utf16to8 = Text
For i = Len(Text) To 1 Step -1
    c = AscW(Mid(Text, i, 1)) And 65535
    If c > 127 Then
        If c > 2047 Then
            utf16to8 = Left(utf16to8, i - 1) + ChrW(224 + c \ 4096) + ChrW(128 + (c \ 64 And 63)) + ChrW(128 + (c And 63)) & Mid(utf16to8, i + 1)
        Else
            utf16to8 = Left(utf16to8, i - 1) + ChrW(192 + c \ 64) + ChrW(128 + (c And 63)) & Mid(utf16to8, i + 1)
        End If
    End If
Next i
End Function
