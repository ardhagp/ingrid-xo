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
        qrCodeURL = "https://api.qrserver.com/v1/create-qr-code?size=200x200&data=" & TX_ATT_LINK.Text

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
        Call MessageBox("No URL to generate as QR Code", "QR CODE", "WOO")
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
    If (Me.AllowEdits = False) And Err.Number = 2046 Then
        If MessageBox("This record is Read Only, to make any changes you need to edit this record from previous page.", "UNABLE TO UNDO CHANGES", "WOO") = vbOK Then
        End If
    ElseIf (Me.AllowEdits = True) And Err.Number = 2046 Then
        If MessageBox("There is no change has been made", "UNABLE TO UNDO CHANGES", "WOO") = vbOK Then
        End If
    ElseIf Err.Number <> 0 And Err.Number <> 2046 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub btnClose_Click()
On Error GoTo ErrorHandle
    If Me.Dirty Then
        If MessageBox("Are you sure want to close this page without saving?", "CONFIRMATION", "QYN") = vbYes Then
            DoCmd.RunCommand acCmdUndo
            DoCmd.Close
        End If
    Else
        DoCmd.Close
    End If

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub btnDelete_Click()
    If MessageBox("Do you want to delete this record permanently?", "CONFIRMATION", "WYN") = vbYes Then
        DoCmd.Close acForm, "MAT_MOVEMENT_EDITOR"
    End If
End Sub

Private Sub btnSave_Click()
On Error GoTo ErrorHandle
    DoCmd.RunCommand acCmdSaveRecord

ErrorHandle:
    If Err.Number = 2046 Then
        If MessageBox("This record is Read Only, to make any changes you need to edit this record from previous page.", "UNABLE TO SAVE", "WOO") = vbOK Then
        End If
    ElseIf Err.Number <> 0 And Err.Number <> 2046 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub Form_Error(DataErr As Integer, Response As Integer)
    'This code below to anticipate Write Conflict
    'source : https://stackoverflow.com/questions/578452/suppress-write-conflict-message-in-access-vba#:~:text=This%20is%20a%20common%20Access%20error,%20and%20it's,form%20before%20updating%20the%20same%20record%20via%20SQL.
    If DataErr = 7787 Then
        Response = acDataErrContinue
        'Me.Recordset.MoveFirst
        'Me.Recordset.MoveLast
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
        tp_TMTM.Visible = False
        tp_ChangeBin.Visible = False
    ElseIf TX_DIRECTION.Text = "OUT" Then
        tp_MaterialIncoming.Visible = False
        tp_MaterialOutgoing.Visible = True
        tp_NCR.Visible = False
        tp_TMTM.Visible = False
        tp_ChangeBin.Visible = False
    ElseIf TX_DIRECTION.Text = "TMTM" Then
        tp_MaterialIncoming.Visible = False
        tp_MaterialOutgoing.Visible = False
        tp_NCR.Visible = False
        tp_TMTM.Visible = True
        tp_ChangeBin.Visible = False
    ElseIf TX_DIRECTION.Text = "BIN" Then
        tp_MaterialIncoming.Visible = False
        tp_MaterialOutgoing.Visible = False
        tp_NCR.Visible = False
        tp_TMTM.Visible = False
        tp_ChangeBin.Visible = True
    End If
    tp_MovementDetail.SetFocus

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub
