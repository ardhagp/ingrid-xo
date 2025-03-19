Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Detail_Format(Cancel As Integer, FormatCount As Integer)
    Dim ctrl As control
    For Each ctrl In Me
        If TypeOf ctrl Is TextBox Then
        If InStr(LCase(ctrl.Tag), "code128") Then drawCode128 ctrl
        If InStr(LCase(ctrl.Tag), "datamatrix") Then drawDataMatrix ctrl
        If InStr(LCase(ctrl.Tag), "qrcode") Then drawQuickResponse ctrl
        If InStr(LCase(ctrl.Tag), "aztec") Then drawAztec ctrl
        End If
    Next ctrl
End Sub
