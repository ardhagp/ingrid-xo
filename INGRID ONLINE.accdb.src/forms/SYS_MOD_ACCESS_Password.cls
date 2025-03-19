Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Var_L_IsPasswordSet As Boolean
Private Var_L_Password As String
Private Var_L_RepeatPassword As String

Private Sub btnClose_Click()
    Var_IsPasswordSet = False
    DoCmd.Close
End Sub

Public Function CHECK_For_Password() As Integer
    Dim Var_L_ErrorOccured As Integer
    Var_L_ErrorOccured = 0

    txtPassword.SetFocus
    Var_L_Password = txtPassword.Text

    txtRepeatPassword.SetFocus
    Var_L_RepeatPassword = txtRepeatPassword.Text

    If Var_L_Password <> Var_L_RepeatPassword Then
        If MessageBox("Your password is different, make sure you repeat the password correctly", "ERROR", "Error") = vbOK Then
        End If
        Var_L_ErrorOccured = Var_L_ErrorOccured + 1
        txtRepeatPassword.SetFocus
    ElseIf Len(Var_L_Password) < 8 Then
        If MessageBox("Please use minimum 8 characters long for your password", "ERROR", "Error") = vbOK Then
        End If
        Var_L_ErrorOccured = Var_L_ErrorOccured + 1
        txtPassword.SetFocus
    End If
    CHECK_For_Password = Var_L_ErrorOccured
End Function

Private Sub btnSetPassword_Click()
    If CHECK_For_Password > 0 Then
        Var_IsPasswordSet = False
    Else
        If MessageBox("Your password has been set successfuly", "SUCCESS", "Info") - vbOK Then
        End If
        'Debug.Print "Set Password: "
        Var_Password = SHA256(Var_L_Password)
        Var_IsPasswordSet = True
        'Forms![SYS_MOD_ACCESS_Editor]!txtPassword.Enabled = True
        'Forms![SYS_MOD_ACCESS_Editor]!txtPassword.Locked = False
        Forms![SYS_MOD_ACCESS_Editor]!txtPassword.SetFocus
        Forms![SYS_MOD_ACCESS_Editor]!txtPassword.Text = Var_Password
        Forms![SYS_MOD_ACCESS_Editor]!txtEmployeeID.SetFocus
        'Forms![SYS_MOD_ACCESS_Editor]!txtPassword.Visible = False
        DoCmd.Close acForm, "SYS_MOD_ACCESS_Password"
    End If
End Sub
