Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Var_L_EmployeeCODE As String
Private Var_L_Password As String

Private Sub Form_Activate()
    Call Get_Host
End Sub

'Form Events
Private Sub Form_Load()
    Call Init0
    Call Get_ApplicationIcon_Export
    Call Get_AppName(False)
    DoCmd.Close acForm, "APP_WATCHDOG"
    If Var_Init0 = 0 Then
        Call SysLog.Activity("Someone opening Ingrid in [" & Var_Host & "]", "Login", "Info")
        Var_Init0 = Var_Init0 + 1
    End If
End Sub

'Component Events
Private Sub btnCancel_Click()
    If MessageBox("Do you want to close Ingrid App?", "CONFIRMATION", "WYN") = vbYes Then
        DoCmd.Quit acQuitSaveAll
    End If
End Sub

Private Sub btnSubmit_Click()
    If CHECK_For_Errors = 0 Then
        Call SysLog.Activity("[" & Var_L_EmployeeCODE & "] is Logged into system from [" & Var_Host & "]", "Login", "Info")
        Call UPDATE_LASTLOGIN(Var_L_EmployeeCODE)
        Var_IsAdmin = Get_IsAdmin(Var_L_EmployeeCODE)
        Var_EmployeeID = Get_EmployeeID(Var_L_EmployeeCODE)
        'Var_EmployeeScopeOfWork = Get_EmployeeScopeOfWork(Var_L_EmployeeCODE)
        Var_EmployeeCODE = Var_L_EmployeeCODE
        'Debug.Print "Session: "
        Var_Session = SHA256(Var_EmployeeCODE)
        Call Put_SessionAdd

        txtEmployeeCODE.SetFocus
        txtEmployeeCODE.Text = ""
        txtPassword.SetFocus
        txtPassword.Text = ""

        Var_Session_ClosingForm = False
        DoCmd.Close
        DoCmd.OpenForm "APP_WATCHDOG", acNormal, , , , acHidden
    Else
        Call SysLog.Activity("Guest with Employee CODE [" & Var_L_EmployeeCODE & "] is trying to Logged into system but failed. Access from [" & Var_Host & "]", "Login", "Error")
    End If
End Sub

'Functions
Private Sub UPDATE_LASTLOGIN(ByVal EMPLOYEECODE As String)

    Var_SQL = "UPDATE t_employee SET EMPLOYEE_ISLOGIN = -1 WHERE EMPLOYEE_CODE = '" & Trim(EMPLOYEECODE) & "'"
    'Debug.Print Var_SQL
    DoCmd.RunSQL Var_SQL

End Sub

Function StringToHex(str As String) As String
    Dim i As Integer
    Dim hexStr As String
    hexStr = ""

    For i = 1 To Len(str)
        hexStr = hexStr & Hex(Asc(Mid(str, i, 1)))
    Next i

    StringToHex = hexStr
End Function

Private Function CHECK_For_Errors() As Integer
    Dim ErrorOccured As Integer
    Dim varKey As String
    Dim Var_L_PlainPassword As String

    ErrorOccured = 0

    txtEmployeeCODE.SetFocus
    Var_L_EmployeeCODE = Trim(txtEmployeeCODE.Text)
    txtPassword.SetFocus
    Var_L_PlainPassword = txtPassword.Text

    varKey = Get_Key
    If IsNull(txtPassword.Value) = True Then Var_L_Password = "" Else Var_L_Password = AESEncrypt_MySQL(GetPassword, varKey)

    If Len(Var_L_EmployeeCODE) = 0 Then
        ErrorOccured = ErrorOccured + 1
        If MessageBox("Employee CODE cannot empty", "ERROR", "Error") = vbOK Then
        End If
        txtEmployeeCODE.SetFocus
    ElseIf Len(Var_L_Password) = 0 Then
        ErrorOccured = ErrorOccured + 1
        If MessageBox("Password cannot empty", "ERROR", "Error") = vbOK Then
        End If
        txtPassword.SetFocus
    ElseIf IngridData.GetValue("count(EMPLOYEE_CODE)", "t_employee", "(EMPLOYEE_CODE='" & Var_L_EmployeeCODE & "') AND (EMPLOYEE_PASSWORD = '" & Var_L_Password & "') AND (EMPLOYEE_ISLOCKED = 0)") = 0 Then
        ErrorOccured = ErrorOccured + 1
        If MessageBox("Employee ID and Password are incorrect", "ERROR", "Error") = vbOK Then
        End If
    End If
    CHECK_For_Errors = ErrorOccured
End Function

Private Sub txtPassword_Change()
    ' Prevent manual edits from breaking the mask
    If txtPassword.Text <> String(Len(strRealPassword), "°") Then
        txtPassword.Text = String(Len(strRealPassword), "°")
    End If
End Sub

Public Function GetPassword() As String
    GetPassword = strRealPassword
End Function

Private Sub txtPassword_KeyPress(KeyAscii As Integer)
 ' Handle backspace
    If KeyAscii = 8 Then
        If Len(strRealPassword) > 0 Then
            strRealPassword = Left(strRealPassword, Len(strRealPassword) - 1)
            txtPassword.Text = String(Len(strRealPassword), "°")
        End If
        KeyAscii = 0 ' Suppress the backspace from altering the TextBox directly
        Exit Sub
    End If

        ' Handle printable characters
    If KeyAscii >= 32 And KeyAscii <= 126 Then
        strRealPassword = strRealPassword & Chr(KeyAscii)
        txtPassword.Text = String(Len(strRealPassword), "°")
        KeyAscii = 0 ' Suppress the actual character from appearing
    End If
End Sub
