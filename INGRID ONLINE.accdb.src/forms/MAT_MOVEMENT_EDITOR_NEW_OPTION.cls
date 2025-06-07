Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Var_L_RecordID As String
Private Var_L_Option As String
Private Var_L_RowID As String

Private Sub BTN_CANCEL_NEWMATERIALMOVEMENT_Click()
On Error GoTo ErrorHandle
    Call Put_SessionAdd

    DoCmd.Close

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub BTN_CREATE_NEWMATERIALMOVEMENT_Click()
On Error GoTo ErrorHandle
    Call Put_SessionAdd

    CBO_SELECTOPTION.SetFocus
    Var_L_Option = CBO_SELECTOPTION.Text

    If Var_L_Option = "INCOMING" Then
        Var_L_Option = "IN"
    ElseIf Var_L_Option = "OUTGOING" Then
        Var_L_Option = "OUT"
    ElseIf Var_L_Option = "CHANGE BIN LOCATION" Then
        Var_L_Option = "SET BIN"
    'ElseIf Var_L_Option = "TRANSFER MATERIAL" Then
    '    Var_L_Option = "TMTM"
    Else
        If MessageBox("Your selected option are not registered", "UNKNOWN OPTION", "Error") = vbOK Then
        End If
        Exit Sub
    End If

    Var_L_RecordID = MD5()

    Var_SQL = "INSERT INTO t_material_movement(TX_ID, TX_DATEDELIVERY, TX_DIRECTION) values('" & Var_L_RecordID & "', #" & Month(Now()) & "/" & Day(Now()) & "/" & Year(Now()) & "#, '" & Var_L_Option & "')"
    'Debug.Print Var_SQL
    DoCmd.RunSQL Var_SQL

    Var_SQL = "INSERT INTO t_material_movement_detail(D_MTXID, D_MIAP, D_DCDCODE, D_MATERIALNAME) VALUES('" & Var_L_RecordID & " ','-','-','YOUR MATERIAL NAME')"
    'Debug.Print Var_SQL
    DoCmd.RunSQL Var_SQL

    Var_L_RowID = IngridData.GetValue("TX_ROWID", "t_material_movement", "TX_ID='" & Var_L_RecordID & "'")

    DoCmd.Close
    DoCmd.OpenForm "MAT_MOVEMENT_EDITOR", acNormal, , "TX_ROWID=" & Var_L_RowID, acFormEdit
ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub CBO_SELECTOPTION_Change()
    Call Put_SessionAdd
End Sub
