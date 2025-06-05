VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Cls_System_Log"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Public Sub Activity(ByVal Action As String, ByVal Area As String, ByVal LogLevel As String)
On Error GoTo ErrorHandle

    Var_SQL = "insert into t_log(log_message, log_area, log_level) values('" & Action & "','" & Area & "','" & LogLevel & "')"

    'Debug.Print Var_SQL

    DoCmd.RunSQL Var_SQL

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub
