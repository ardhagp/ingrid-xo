Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub btnAdd_Click()
On Error GoTo ErrorHandle

    Call Put_SessionAdd
    Var_IsNew = False

    If Get_AccessLevel("APP_MAT_IO_BYDATE", Var_EmployeeID) < 2 And Var_IsAdmin = 0 Then
        If MessageBox("You are not authorized to add or edit in this module", "LIMITED ACCESS", "Error") = vbOK Then
        End If
        Call SysLog.Activity("[" & Var_EmployeeID & "] from [" & Var_Host & "] try to add or edit in [MAT_MOVEMENT_BYDATE] but blocked due to level restriction", "SYS_MOD_ACCESS", "Error")
        Exit Sub
    End If

    DoCmd.OpenForm "MAT_MOVEMENT_EDITOR_NEW_OPTION", acNormal, , , , acDialog

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub btnClose_Click()
    Call Put_SessionAdd
    DoCmd.Close
End Sub

Private Sub btnEdit_Click()
On Error GoTo ErrorHandle

    Call Put_SessionAdd
    Var_IsNew = False

    If IsAnyRow = True Then
        If Get_AccessLevel("APP_MAT_IO_BYDATE", Var_EmployeeID) < 2 And Var_IsAdmin = 0 Then
            If MessageBox("You are not authorized to add or edit in this module", "LIMITED ACCESS", "Error") = vbOK Then
            End If
            Call SysLog.Activity("[" & Var_EmployeeID & "] from [" & Var_Host & "] try to add or edit in [MAT_MOVEMENT_BYDATE] but blocked due to level restriction", "SYS_MOD_ACCESS", "Error")
            Exit Sub
        End If

        Forms![MAT_MOVEMENT_BYDATE]![MAT_MOVEMENT_BYDATE_Sub_DETAIL]!TX_ROWID.SetFocus
        Var_Identifier = Forms![MAT_MOVEMENT_BYDATE]![MAT_MOVEMENT_BYDATE_Sub_DETAIL]!TX_ROWID.Text
        'Var_Identifier = IngridData.GetValue("user_id", "v_user", "user_employeeid ='" & Var_Identifier & "'")

        If ROWID_IsExist(Var_Identifier) <> 0 Then
            DoCmd.OpenForm "MAT_MOVEMENT_EDITOR", acNormal, , "TX_ROWID=" & CInt(Var_Identifier), acFormEdit
        Else
            If MessageBox("This record no longer exist", "UNABLE TO EDIT", "Error") = vbOK Then
            End If
        End If
    Else
        Exit Sub
    End If

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub btnFind_Click()
    Call Put_SessionAdd
    Call Post_Find
End Sub

Private Sub btnFindClear_Click()
    Call Put_SessionAdd
    txtFind.SetFocus
    txtFind.Text = ""
    Var_MAT_Find = ""
End Sub

Private Function IsAnyRow(Optional ByVal ShowMessage As Boolean = True) As Boolean
    Dim rs As DAO.Recordset

    Set rs = Me.MAT_MOVEMENT_BYDATE_Sub_DETAIL.Form.RecordsetClone

    If rs.RecordCount = 0 Then
        If ShowMessage = True Then
            If MessageBox("No Record(s) available", "NO DATA", "Warning") = vbOK Then
            End If
        End If
        IsAnyRow = False
    Else
        IsAnyRow = True
    End If
End Function

Private Function ROWID_IsExist(Optional ByVal ROWID As Integer = 0) As Integer
On Error Resume Next

    ROWID_IsExist = IngridData.GetValue("count(TX_ROWID)", "t_material_movement", "TX_ROWID = " & ROWID)
End Function

Private Sub Post_Find()
    txtFind.SetFocus

    Var_MAT_Find = Trim(txtFind.Text)
    Var_SQL_Where = ""

    'Execute query for date table
    If Len(Var_MAT_Find) > 0 Then
        If IsNumeric(Var_MAT_Find) = True Then
            Var_SQL_Where = " AND (mm.TX_ROWID = " & Var_MAT_Find & " OR mm.D_MATERIALNAME like '%" & Var_MAT_Find & "%') OR (mm.TX_PO like '%" & Var_MAT_Find & "%') OR (mm.TX_ORIGIN like '%" & Var_MAT_Find & "%') OR (mm.TX_DESTINATION like '%" & Var_MAT_Find & "%') OR (mm.TX_MANIFEST like '%" & Var_MAT_Find & "%') "
        Else
            Var_SQL_Where = " AND (mm.D_MATERIALNAME like '%" & Var_MAT_Find & "%') OR (mm.TX_PO like '%" & Var_MAT_Find & "%') OR (mm.TX_ORIGIN like '%" & Var_MAT_Find & "%') OR (mm.TX_DESTINATION like '%" & Var_MAT_Find & "%') OR (mm.TX_MANIFEST like '%" & Var_MAT_Find & "%') "
        End If
    End If

    Var_SQL = "SELECT mm.TX_DATEDELIVERY as TX_DATE" & _
                " FROM t_q_material_movement AS mm WHERE mm.TX_DATEDELIVERY is not null " & Var_SQL_Where & _
                " UNION SELECT mm.TX_DATERECEIVED as TX_DATE " & _
                " FROM t_q_material_movement AS mm WHERE mm.TX_DATERECEIVED is not null " & Var_SQL_Where & _
                " GROUP BY mm.TX_DATEDELIVERY, mm.TX_DATERECEIVED " & _
                " ORDER BY TX_DATE DESC"

    Call Post_Execute_Date

    'Execute query for detail table
    Var_SQL = "SELECT mm.TX_ROWID, mm.TX_DIRECTION, IIf(mm.TX_DATEDELIVERY=#" & Get_StdDate(Var_MAT_Date) & "#,'1','0') AS TX_CODE_D, IIf(mm.TX_DATERECEIVED=#" & Get_StdDate(Var_MAT_Date) & "#,'1','0') AS TX_CODE_R, mm.TX_ATT_LINK, 'COFF: ' & mm.TX_PO & ' • PLANT: ' & mm.TX_PLANT & (chr(13) + chr(10)) & 'FROM: ' & mm.TX_ORIGIN & ' • TO: ' & mm.TX_DESTINATION & (chr(13) + chr(10)) & 'MANIFEST: ' & mm.TX_MANIFEST AS DESCRIPTION " & _
                " FROM t_q_material_movement AS mm " & _
                " WHERE (mm.TX_ROWID = -1)" & _
                " GROUP BY mm.TX_ROWID, mm.TX_DIRECTION, IIf(mm.TX_DATEDELIVERY=#" & Get_StdDate(Var_MAT_Date) & "#,'1','0'), IIf(mm.TX_DATERECEIVED=#" & Get_StdDate(Var_MAT_Date) & "#,'1','0'), mm.TX_ORIGIN, mm.TX_DESTINATION, mm.TX_ATT_LINK, 'COFF: ' & mm.TX_PO & ' • PLANT: ' & mm.TX_PLANT & (chr(13) + chr(10)) & 'FROM: ' & mm.TX_ORIGIN & ' • TO: ' & mm.TX_DESTINATION & (chr(13) + chr(10)) & 'MANIFEST: ' & mm.TX_MANIFEST;"

    Call Post_Execute_Detail
End Sub

Private Sub Post_Refresh()
    txtFind.SetFocus
    txtFind.Text = ""
    Var_MAT_Find = ""

    Var_SQL = "SELECT mm.TX_DATEDELIVERY as TX_DATE" & _
                " FROM t_q_material_movement AS mm " & _
                " UNION SELECT mm.TX_DATERECEIVED as TX_DATE " & _
                " FROM t_q_material_movement AS mm " & _
                " GROUP BY mm.TX_DATEDELIVERY, mm.TX_DATERECEIVED " & _
                " ORDER BY TX_DATE DESC"
    'Debug.Print Var_SQL
    Call Post_Execute_Date

    Var_SQL = "SELECT mm.TX_ROWID, mm.TX_DIRECTION, IIf(mm.TX_DATEDELIVERY=#" & Get_StdDate(Var_MAT_Date) & "#,'1','0') AS TX_CODE_D, IIf(mm.TX_DATERECEIVED=#" & Get_StdDate(Var_MAT_Date) & "#,'1','0') AS TX_CODE_R, mm.TX_ATT_LINK, 'COFF: ' & mm.TX_PO & ' • PLANT: ' & mm.TX_PLANT & (chr(13) + chr(10)) & 'FROM: ' & mm.TX_ORIGIN & ' • TO: ' & mm.TX_DESTINATION & (chr(13) + chr(10)) & 'MANIFEST: ' & mm.TX_MANIFEST AS DESCRIPTION " & _
                " FROM t_q_material_movement AS mm " & _
                " WHERE (mm.TX_ROWID = -1)" & _
                " GROUP BY mm.TX_ROWID, mm.TX_DIRECTION, IIf(mm.TX_DATEDELIVERY=#" & Get_StdDate(Var_MAT_Date) & "#,'1','0'), IIf(mm.TX_DATERECEIVED=#" & Get_StdDate(Var_MAT_Date) & "#,'1','0'), mm.TX_ORIGIN, mm.TX_DESTINATION, mm.TX_ATT_LINK, 'COFF: ' & mm.TX_PO & ' • PLANT: ' & mm.TX_PLANT & (chr(13) + chr(10)) & 'FROM: ' & mm.TX_ORIGIN & ' • TO: ' & mm.TX_DESTINATION & (chr(13) + chr(10)) & 'MANIFEST: ' & mm.TX_MANIFEST;"

    Call Post_Execute_Detail
End Sub

Private Sub Post_Execute_Date()
On Error GoTo ErrorHandle

    'Debug.Print Var_SQL

    CurrentDb.QueryDefs("q_mat_datemove_date").SQL = Var_SQL

    MAT_MOVEMENT_BYDATE_Sub_DATE.SetFocus
    MAT_MOVEMENT_BYDATE_Sub_DATE.Requery
    MAT_MOVEMENT_BYDATE_Sub_DATE.Form.RecordSource = Var_SQL

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub Post_Execute_Detail()
On Error GoTo ErrorHandle

    'Debug.Print Var_SQL

    CurrentDb.QueryDefs("q_mat_datemove_detail").SQL = Var_SQL

    MAT_MOVEMENT_BYDATE_Sub_DETAIL.SetFocus
    MAT_MOVEMENT_BYDATE_Sub_DETAIL.Requery
    MAT_MOVEMENT_BYDATE_Sub_DETAIL.Form.RecordSource = Var_SQL

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub btnRefresh_Click()
    Call Put_SessionAdd
    Call Post_Refresh
End Sub
