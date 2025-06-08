Attribute VB_Name = "Mod_System_Ribbon"
Option Compare Database
Option Explicit


Public globalRibbon As IRibbonUI
Public Msg, Style, Title, Help, Ctxt, Response, MyString
'Public vImage As Variant

'Public Sub onRibbonLoad(ByVal ribbon As IRibbonUI) 'onRibbonLoad
'    Set globalRibbon = ribbon
'End Sub

Public Sub OrbClicked(control As IRibbonControl)
Dim RibbonTag As String
RibbonTag = control.Tag
On Error GoTo ErrorHandle

    If RibbonTag = "frmNote" Then
        DoCmd.OpenForm control.Tag, acNormal, ""
        Exit Sub
    End If

    'If WORKSLOC = "" Then
    '    Msg = "Please set your Working Directory first." & vbCrLf & "Close all window, then open User Menu from APP SETTINGS"
    '    Style = vbOKOnly + vbExclamation + vbDefaultButton1    ' Define buttons.
    '    Title = "Ingrid Express"    ' Define title.
    '    Response = MsgBox(Msg, Style, Title, Help, Ctxt)
    'Exit Sub
    'End If

    If RibbonTag = "CloseDB" Then
        Call CloseDB
    ElseIf RibbonTag = "CompactAndRepair" Then
        Call CompactAndRepair
    ElseIf Left(RibbonTag, 3) = "rpt" Then
        DoCmd.OpenReport control.Tag, acViewPreview
    Else
        If Get_IsSession(False, True) = True Then 'Memeriksa apakah session masih aktif
            If Var_IsAdmin <> 0 Then 'Path untuk admin
                DoCmd.OpenForm control.Tag, acNormal, ""
                Call SysLog.Activity("[" & Var_EmployeeID & "] from [" & Var_Host & "] opening module [" & control.Tag & "]", "Ribbon", "Info")
            Else 'Path untuk user biasa
                If Get_AccessLevel(control.Tag, Var_EmployeeID) > 0 Then
                    DoCmd.OpenForm control.Tag, acNormal, ""
                    Call SysLog.Activity("[" & Var_EmployeeID & "] from [" & Var_Host & "] opening module [" & control.Tag & "]", "Ribbon", "Info")
                Else
                    If MessageBox("You are not authorized to access this module", "LIMITED ACCESS", "EOO") = vbOK Then
                    End If
                    Call SysLog.Activity("[" & Var_EmployeeID & "] from [" & Var_Host & "] try to opening module [" & control.Tag & "] but blocked due to level restriction", "Ribbon", "Error")
                End If
            End If
            Call Put_SessionAdd
        End If
    End If

    Exit Sub
ErrorHandle:
    If MessageBox("This module is still in development.", "ERROR", "EOO") = vbOK Then
    End If
    Call SysLog.Activity("[" & Var_EmployeeID & "] from [" & Var_Host & "] trying to open module that are not developed [" & control.Tag & "]", "Ribbon", "Error")
End Sub

Sub CallbackLoadImage(imageID As String, _
                     ByRef image)
    ' Callback loadImage
    'Debug.Print
    Set image = LoadPicture(Application.CurrentProject.Path & "\Assets\img\" & imageID)
End Sub

Public Sub CloseDB()
    If MessageBox("Do you want to end your session and close the database?", "CONFIRMATION", "QYN") = vbYes Then
        DoCmd.Quit
    End If
End Sub

Public Sub CompactAndRepair()
    If MessageBox("Please use Compact and Repair when Ingrid Online running slow." & vbCrLf & "Do you want to continue?", "CONFIRMATION", "QYN") = vbYes Then
        Application.SetOption "Auto compact", True
    End If
End Sub
