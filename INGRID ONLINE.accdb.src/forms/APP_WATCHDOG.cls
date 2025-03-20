Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Var_L_IsFinished As Boolean

Private Sub Form_Timer()
    If Get_IsSession(False) = False And Var_Session_ClosingForm = False Then
        If MessageBox("Your session is expired, please login again.", "SESSION EXPIRED", "Error") = vbOK Then
        End If

        lblSessionExpiry.Caption = ""
        lblSessionExpiry.Caption = ""

        ' Summary
        DoCmd.Close acForm, "MAT_SUMMARY_NCR"

        ' Material Movement
        DoCmd.Close acForm, "MAT_MOVEMENT_EDITOR"
        DoCmd.Close acForm, "MAT_MOVEMENT_BYDATE"

        ' System Settings - User Access
        DoCmd.Close acForm, "SYS_MOD_ACCESS"
        DoCmd.Close acForm, "SYS_MOD_ACCESS_EDITOR"
        DoCmd.Close acForm, "SYS_MOD_ACCESS_PASSWORD"

        DoCmd.Close acReport, "RPT_MAT_MOVEMENT_BYDATE_EDITOR"

        'Finally showing Login Form
        DoCmd.OpenForm "APP_LOGIN"

        'And Set Variable to Stop Loop
        Var_Session_ClosingForm = True
    Else
        'Application.Echo False
        lblSessionExpiry.Caption = Var_Session_Timestamp
        lblWatcherText.Caption = Time
        lblSessionID.Caption = Var_Session
        'Application.Echo True
    End If
End Sub
