Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub btn_OpenThisRecord_Click()
On Error GoTo ErrorHandle

    TX_DIRECTION.SetFocus
    Var_MAT_Direction = TX_DIRECTION.Text

    TX_ROWID.SetFocus
    DoCmd.OpenForm "MAT_MOVEMENT_EDITOR", acNormal, , "TX_ROWID=" & TX_ROWID.Value, acFormReadOnly

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub btnOpenURL_Click()
    Dim Var_L_URL As String
    Dim IsURL_Valid As Boolean

    TX_ATT_LINK.SetFocus
    Var_L_URL = Trim(TX_ATT_LINK.Text)

    IsURL_Valid = Get_IsURLValid(Var_L_URL, True, True)
End Sub
