Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub btn_ChangeOriginToDestination_Click()
On Error GoTo ErrorHandle
    Dim Var_L_Temp_Origin, Var_L_Temp_Destination As String
    TX_ORIGIN.SetFocus
    Var_L_Temp_Origin = TX_ORIGIN.Text
    TX_DESTINATION.SetFocus
    Var_L_Temp_Destination = TX_DESTINATION.Text
    TX_ORIGIN.SetFocus
    TX_ORIGIN.Text = Var_L_Temp_Destination
    TX_DESTINATION.SetFocus
    TX_DESTINATION.Text = Var_L_Temp_Origin

ErrorHandle:
    If Err.Number = 2135 Then
        If MessageBox("This record is Read Only, to make any changes you need to edit this record.", "INFO", "INFO") = vbOK Then
        End If
    ElseIf Err.Number <> 0 And Err.Number <> 2135 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub btn_OpenURL_Click()
    Dim Var_L_URL As String
    Dim IsURL_Valid As Boolean

    TX_ATT_LINK.SetFocus
    Var_L_URL = Trim(TX_ATT_LINK.Text)
    IsURL_Valid = Get_IsURLValid(Var_L_URL, True, True)

End Sub

Private Sub btn_QRCode_Click()
On Error GoTo ErrorHandle
    Dim IsURL As Integer
    assetsFolder = "Assets"
    assetsFolderFullPath = CurrentProject.Path & "\" & assetsFolder

    'TX_ROWID.SetFocus
    'DoCmd.OpenReport "RPT_MAT_MOVEMENT_BYDATE_EDITOR", acViewPreview, , "TX_ROWID=" & TX_ROWID.Text, acDialog

    'Set browserControl = Me.EDGE_QR

    'EDGE_QR.Visible = True
    TX_ATT_LINK.SetFocus
    IsURL = Len(Trim(TX_ATT_LINK.Text))

    If IsURL > 0 Then
        Dim qrCodeURL As String
        Dim qrCodeFilePath As String

        ' Generate the QR Code URL using Google Charts API
        qrCodeURL = "https://api.qrserver.com/v1/create-qr-code?size=256x256&data=" & TX_ATT_LINK.Text

        ' Path to save the QR Code image locally
        qrCodeFilePath = assetsFolderFullPath & "\qrcode_qrserver.png"

        ' Download the QR Code image and save it locally
        Dim XMLHTTP As Object
        Dim Stream As Object

        Set XMLHTTP = CreateObject("MSXML2.XMLHTTP")
        Set Stream = CreateObject("ADODB.Stream")

        XMLHTTP.Open "GET", qrCodeURL, False
        XMLHTTP.Send

        'ShowXMLHTTP Status
        'MsgBox XMLHTTP.Status

        If XMLHTTP.Status = 200 Then
            Stream.Type = 1
            Stream.Open
            Stream.Write XMLHTTP.responseBody
            Stream.SaveToFile qrCodeFilePath, 2
            Stream.Close
        End If

        ' Set the Image Control to display the saved QR Code
        Me.IMG_QR.Picture = qrCodeFilePath

        ' Cleanup
        Set XMLHTTP = Nothing
        Set Stream = Nothing
    Else
        Call MessageBox("No URL to generate as QR Code", "QR CODE", "Info")
    End If

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub btnCancel_Click()
On Error GoTo ErrorHandle
    DoCmd.SetWarnings False
    DoCmd.RunCommand acCmdUndo
    DoCmd.SetWarnings True

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub btnClose_Click()
On Error GoTo ErrorHandle
    DoCmd.Close

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub btnSave_Click()
On Error GoTo ErrorHandle
    DoCmd.RunCommand acCmdSaveRecord

ErrorHandle:
    If Err.Number = 2046 Then
        If MessageBox("This record is Read Only, to make any changes you need to edit this record.", "INFO", "INFO") = vbOK Then
        End If
    ElseIf Err.Number <> 0 And Err.Number <> 2046 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub Form_Load()
    Call Get_LoadTab
End Sub

Private Sub Get_LoadTab()
On Error GoTo ErrorHandle

    TX_DIRECTION.SetFocus
    If TX_DIRECTION.Text = "IN" Then
        tp_MaterialIncoming.Visible = True
        tp_MaterialOutgoing.Visible = False
        tp_NCR.Visible = True
    ElseIf TX_DIRECTION.Text = "OUT" Then
        tp_MaterialIncoming.Visible = False
        tp_MaterialOutgoing.Visible = True
        tp_NCR.Visible = False
    End If
    tp_MovementDetail.SetFocus

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub
