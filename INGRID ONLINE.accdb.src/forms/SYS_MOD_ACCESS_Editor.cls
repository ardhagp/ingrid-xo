Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Var_L_IsNew As Boolean
Private Var_L_Identifier As String
Private Var_L_UserID As String
Private Var_L_EmployeeID As String
Private Var_L_Password As String
Private Var_L_IsFormLoading As Boolean
Private Var_L_IsLoadingComplete As Boolean

Private Sub btnCancel_Click()
On Error Resume Next
    If Var_L_IsNew = True Then
        txtEmployeeID.SetFocus
        txtEmployeeID.SetFocus
        txtJobTitle.Value = txtJobTitle.ItemData(0)
        cboSloc.Value = cboSloc.ItemData(0)
    Else
        DoCmd.SetWarnings False
        DoCmd.RunCommand acCmdUndo
        DoCmd.SetWarnings True
    End If
End Sub

Private Sub btnChangePassword_Click()
On Error GoTo ErrorHandle
    Call Put_SessionAdd
    txtPassword.Visible = True
    DoCmd.OpenForm "SYS_MOD_ACCESS_Password", acNormal, , , , acDialog

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub btnDelete_Click()
On Error GoTo ErrorHandle
    If MessageBox("Do you want to delete this data?", "CONFIRMATION", "Question") = vbYes Then
        Var_SQL = "delete from t_employee where EMPLOYEE_ROWID = " & CInt(Var_L_Identifier)

        'Debug.Print Var_SQL
        DoCmd.RunSQL Var_SQL

        If MessageBox("Delete success", "INFO", "Info") = vbOK Then
            DoCmd.Close acForm, "SYS_MOD_ACCESS_Editor"
        End If
    End If
ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

'Form Events
Private Sub Form_Load()
    txtUSERID.Visible = True
    Call Put_SessionAdd
    Var_L_IsFormLoading = True
    Var_L_IsNew = Var_IsNew

    If Var_L_IsNew = True Then
        chkIsLocked.Value = 0
        txtJobTitle.SetFocus
        txtJobTitle.Text = txtJobTitle.ItemData(0)
        txtEmployeeID.SetFocus
        txtUSERID.Visible = False
        Var_L_Password = ""
    Else
        Var_L_Identifier = Var_Identifier
        txtUSERID.SetFocus
        Var_L_UserID = txtUSERID.Text
        'Debug.Print "userid: " & Var_L_UserID
        txtEmployeeID.SetFocus
        txtUSERID.Visible = False

        'Call EMPLOYEE_ACCESS(Var_L_UserID)
    End If

    Var_L_IsFormLoading = False
End Sub

'Component Events
Private Sub btnClose_Click()
    If Var_L_IsNew = True Then
        Var_SQL = "delete from t_employee where EMPLOYEE_ID = '" & Var_IsNew_Identifier & "'"
        DoCmd.RunSQL Var_SQL
    End If

    DoCmd.Close acForm, "SYS_MOD_ACCESS_Editor", acSaveNo
End Sub

Private Sub btnSave_Click()
On Error GoTo ErrorHandle
    If CHECK_For_Errors = 0 Then
        DoCmd.RunCommand acCmdSaveRecord
        If MessageBox("Your record saved successfully", "USER ACCESS", "Info") = vbOK Then
            DoCmd.Close acForm, "SYS_MOD_ACCESS_Editor"
        End If
    Else
        If Var_L_IsNew = True Then
            '
        Else
            '
        End If
    End If
ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

'Functions
Private Sub EMPLOYEE_ACCESS(Optional ByVal EMPLOYEEID As String = "0")

    Var_SQL = "SELECT (SELECT MODULEACCESS_ROWID FROM t_moduleaccess where MODULEACCESS_MODULEID = t_module.MODULE_ID AND " & _
                "MODULEACCESS_EMPLOYEEID = '" & EMPLOYEEID & "') AS MODULEACCESS_ROWID, MODULE_ID, MODULE_CODE, " & _
                "(SELECT tal.ACCESSLEVEL_NAME FROM t_moduleaccess as tma INNER JOIN t_accesslevel as tal ON tma.MODULEACCESS_LEVEL = tal.ACCESSLEVEL_ID " & _
                "where tma.MODULEACCESS_MODULEID = t_module.MODULE_ID AND MODULEACCESS_EMPLOYEEID = '" & EMPLOYEEID & "') AS MODULE_ACCESSLEVEL " & _
                "FROM t_module;"
    Debug.Print Var_SQL
    CurrentDb.QueryDefs("q_sys_employee_access").SQL = Var_SQL

    frmSystem_User_Editor_Access.Requery
    frmSystem_User_Editor_Access.Form.RecordSource = Var_SQL

End Sub

Private Function EMPLOYEEID_IsExist(ByVal EMPLOYEEID As String) As Integer
On Error GoTo ErrorHandle
    'txtEmployeeID.SetFocus
    If IsNull(txtEmployeeID.Text) = True Then
        Var_L_EmployeeID = ""
    Else
        Var_L_EmployeeID = Trim(txtEmployeeID.Value)
    End If

    If Var_L_IsNew = True Then
        EMPLOYEEID_IsExist = IngridData.GetValue("count(USER_ID)", "q_employee", "USER_EMPLOYEEID = '" & Var_L_EmployeeID & "'")
    Else
        EMPLOYEEID_IsExist = IngridData.GetValue("count(USER_ID)", "q_employee", "USER_EMPLOYEEID = '" & Var_L_EmployeeID & "' and USER_ROWID <> " & CInt(Var_L_Identifier))
    End If

    If EMPLOYEEID_IsExist = 0 Then
        imgNoDuplicate.Visible = True
        imgIsDuplicate.Visible = False
    Else
        imgNoDuplicate.Visible = False
        imgIsDuplicate.Visible = True
    End If

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Function

Private Function CHECK_For_Errors() As Integer
    Dim ErrorOccured As Integer

    txtEmployeeID.SetFocus
    If IsNull(txtEmployeeID.Text) = True Then Var_L_EmployeeID = "" Else Var_L_EmployeeID = Trim(IIf(IsNull(txtEmployeeID.Text) = True, "", Trim(txtEmployeeID.Text)))

    ErrorOccured = 0

    If Len(txtEmployeeID.Text) = 0 Then
        If MessageBox("Employee ID cannot be empty", "ERROR", "Error") = vbOK Then
        End If
        ErrorOccured = ErrorOccured + 1
        txtEmployeeID.SetFocus
    ElseIf EMPLOYEEID_IsExist(Var_L_EmployeeID) <> 0 Then
        If MessageBox("Employee ID already registered", "ERROR", "Error") = vbOK Then
        End If
        ErrorOccured = ErrorOccured + 1
    ElseIf Var_IsPasswordSet = False And Var_L_IsNew = True Then
        If MessageBox("Password cannot be empty", "ERROR", "Error") = vbOK Then
        End If
        ErrorOccured = ErrorOccured + 1
    End If

    CHECK_For_Errors = ErrorOccured
End Function

Private Sub txtEmployeeID_Change()
    imgNoDuplicate.Visible = False
    imgIsDuplicate.Visible = False
End Sub

Private Sub txtEmployeeID_LostFocus()
    If IsNull(txtEmployeeID.Value) = True Then
        Var_L_EmployeeID = ""
    Else
        Var_L_EmployeeID = Trim(txtEmployeeID.Text)
    End If

    Call EMPLOYEEID_IsExist(Var_L_EmployeeID)
End Sub
