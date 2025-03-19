Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Var_L_IsLoaded As Boolean

Private Sub btnClose_Click()
    DoCmd.Close
End Sub

Private Sub btnDelete_Click()
    If IsAnyRow(True) = True Then
        If MessageBox("Are you sure want to delete this record?", "INGRID - CONFIRMATION", "Question") = vbYes Then
            Forms![frmSystem_User]![SYS_MOD_ACCESS_List]!txtEmployeeID.SetFocus
            Var_Identifier = Forms![SYS_MOD_ACCESS]![SYS_MOD_ACCESS_List]!txtEmployeeID.Text
            Var_SQL = "Delete from t_user where USER_EMPLOYEEID = '" & Var_Identifier & " ';"
            'Debug.Print Var_SQL
            DoCmd.RunSQL Var_SQL
        End If
    Else
        Exit Sub
    End If
End Sub

Private Sub btnFind_Click()
    txtFind.SetFocus

End Sub

Private Sub btnRefresh_Click()
    DoCmd.Requery
End Sub

Private Sub Form_Activate()
    If Var_L_IsLoaded = True Then
        Call LockForm(Me, Get_IsSession)
        If Get_IsSession = False Then
            DoCmd.OpenForm "APP_LOGIN", acNormal
        End If
    Else
        '
    End If
End Sub

'Form Events
Private Sub Form_Load()
    Call Get_Host(Me.Name)
    Call LockForm(Me, Get_IsSession)

    Var_L_IsLoaded = True
End Sub


'Component Events
Private Sub btnAdd_Click()
    If Get_AccessLevel("SYS_MOD_ACCESS", Var_EmployeeID) < 2 And Var_IsAdmin = 0 Then
        If MessageBox("You are not authorized to add or edit in this module", "LIMITED ACCESS", "Error") = vbOK Then
        End If
        Call SysLog.Activity("[" & Var_EmployeeID & "] from [" & Var_Host & "] try to add or edit in [SYS_MOD_ACCESS] but blocked due to level restriction", "SYS_MOD_ACCESS", "Error")
        Exit Sub
    End If
    Var_IsNew = True
    Var_IsNew_Identifier = MD5()
    Var_SQL = "Insert into t_employee(EMPLOYEE_ID) values('" & Var_IsNew_Identifier & "');"
    'Debug.Print Var_SQL
    DoCmd.RunSQL Var_SQL
    DoCmd.OpenForm "SYS_MOD_ACCESS_Editor", acNormal, , "EMPLOYEE_ID='" & Var_IsNew_Identifier & "'", acFormEdit
End Sub

Private Sub btnEdit_Click()
    Var_IsNew = False

    If IsAnyRow = True Then
        If Get_AccessLevel("SYS_MOD_ACCESS", Var_EmployeeID) < 2 And Var_IsAdmin = 0 Then
            If MessageBox("You are not authorized to add or edit in this module", "LIMITED ACCESS", "Error") = vbOK Then
            End If
            Call SysLog.Activity("[" & Var_EmployeeID & "] from [" & Var_Host & "] try to add or edit in [SYS_MOD_ACCESS] but blocked due to level restriction", "SYS_MOD_ACCESS", "Error")
            Exit Sub
        End If

        Forms![SYS_MOD_ACCESS]![SYS_MOD_ACCESS_List]!txtUSERROWID.SetFocus
        Var_Identifier = Forms![SYS_MOD_ACCESS]![SYS_MOD_ACCESS_List]!txtUSERROWID.Text
        'Var_Identifier = IngridData.GetValue("user_id", "v_user", "user_employeeid ='" & Var_Identifier & "'")

        If ROWID_IsExist(Var_Identifier) <> 0 Then
            DoCmd.OpenForm "SYS_MOD_ACCESS_Editor", acNormal, , "EMPLOYEE_ROWID=" & CInt(Var_Identifier), acFormEdit
        Else
            If MessageBox("This record no longer exist", "UNABLE TO EDIT", "Error") = vbOK Then
            End If
        End If
    Else
        Exit Sub
    End If
End Sub

Private Sub btnFindClear_Click()
    txtFind.SetFocus
    txtFind.Text = ""
End Sub

Private Function IsAnyRow(Optional ByVal ShowMessage As Boolean = True) As Boolean
    Dim rs As DAO.Recordset

    Set rs = Me.SYS_MOD_ACCESS_List.Form.RecordsetClone

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

    ROWID_IsExist = IngridData.GetValue("count(EMPLOYEE_ROWID)", "t_employee", "EMPLOYEE_ROWID = " & ROWID)
End Function
