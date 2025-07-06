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
        Forms![SYS_MOD_ACCESS_EDITOR]!txtPassword.SetFocus
        Forms![SYS_MOD_ACCESS_EDITOR]!txtPassword.Text = Var_Password
        Forms![SYS_MOD_ACCESS_EDITOR]!txtEmployeeID.SetFocus
        'Forms![SYS_MOD_ACCESS_Editor]!txtPassword.Visible = False
        DoCmd.Close acForm, "SYS_MOD_ACCESS_Password"
    End If
End Sub

Private Sub txtPassword_Change()
    ' Prevent manual edits from breaking the mask
    If txtPassword.Text <> String(Len(strRealPassword), "°") Then
        txtPassword.Text = String(Len(strRealPassword), "°")
    End If
End Sub

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

Private Sub txtRepeatPassword_Change()
    ' Prevent manual edits from breaking the mask
    If txtRepeatPassword.Text <> String(Len(strRealPassword), "°") Then
        txtRepeatPassword.Text = String(Len(strRealPassword), "°")
    End If
End Sub

Private Sub txtRepeatPassword_KeyPress(KeyAscii As Integer)
 ' Handle backspace
    If KeyAscii = 8 Then
        If Len(strRealPassword) > 0 Then
            strRealPassword = Left(strRealPassword, Len(strRealPassword) - 1)
            txtRepeatPassword.Text = String(Len(strRealPassword), "°")
        End If
        KeyAscii = 0 ' Suppress the backspace from altering the TextBox directly
        Exit Sub
    End If

        ' Handle printable characters
    If KeyAscii >= 32 And KeyAscii <= 126 Then
        strRealPassword = strRealPassword & Chr(KeyAscii)
        txtRepeatPassword.Text = String(Len(strRealPassword), "°")
        KeyAscii = 0 ' Suppress the actual character from appearing
    End If
End Sub
