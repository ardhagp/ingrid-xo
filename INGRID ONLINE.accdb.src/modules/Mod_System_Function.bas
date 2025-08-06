Attribute VB_Name = "Mod_System_Function"
Option Compare Database
Option Explicit

Public Sub Init0()
On Error Resume Next
    ' Define the "Assets" folder path
    assetsFolder = "Assets"
    assetsFolderFullPath = CurrentProject.Path & "\" & assetsFolder
    Var_IsAppObsolete = Get_IsVersionObsolete()

    If Var_IsAppObsolete = True Then
        DoCmd.OpenForm "APP_UPDATE", acNormal
    End If
End Sub

Public Function MessageBox(Optional ByVal MessageText As String = "", Optional ByVal MessageTitle As String = "", Optional ByVal MessageType As String = "Info") As Variant
    Dim Var_MessageType As Variant

    ' Show types of Messages
    Select Case MessageType
        Case "Info"
            Var_MessageType = vbInformation + vbOKOnly + vbDefaultButton1

        Case "IOO"
            Var_MessageType = vbInformation + vbOKOnly + vbDefaultButton1

        Case "Question"
            Var_MessageType = vbQuestion + vbYesNo + vbDefaultButton2

        Case "QYN"
            Var_MessageType = vbQuestion + vbYesNo + vbDefaultButton2

        Case "Warning"
            Var_MessageType = vbExclamation + vbYesNo + vbDefaultButton2

        Case "WOO"
            Var_MessageType = vbExclamation + vbOKOnly + vbDefaultButton1

        Case "WYN"
            Var_MessageType = vbExclamation + vbYesNo + vbDefaultButton2

        Case "Error"
            Var_MessageType = vbCritical + vbOKOnly + vbDefaultButton1

        Case "EOO"
            Var_MessageType = vbCritical + vbOKOnly + vbDefaultButton1

        Case "EYN"
            Var_MessageType = vbCritical + vbYesNo + vbDefaultButton2

    End Select

    MessageBox = MsgBox(MessageText, Var_MessageType, MessageTitle)
End Function

Public Sub Post_ErrorMessage(ByVal ErrorNumber As Integer, ByVal ErrorDescription As String)
    MsgBox "Error Number: " & vbCrLf & ErrorNumber & vbCrLf & vbCrLf & "Error Description: " & vbCrLf & ErrorDescription, vbCritical, "ERROR"
End Sub

Public Sub Get_Host(Optional ByVal FormName As String = "")
    Var_LastFormOpen = FormName
    Var_Host = Environ$("computername") & "/" & Environ$("username")
End Sub

Public Function Get_ScreenWidth() As Integer
    Dim wd As Object
    Set wd = CreateObject("word.application")
    Get_ScreenWidth = CInt(wd.UsableWidth)
End Function

Public Function Get_ScreenHeight() As Integer
    Dim wd As Object
    Set wd = CreateObject("word.application")
    Get_ScreenHeight = wd.usableHeight
End Function

Public Function Get_StdDate(ByVal InputDate As Date) As String
    Dim Var_L_Date As String
    Var_L_Date = Month(InputDate) & "/"
    Var_L_Date = Var_L_Date & Day(InputDate) & "/"
    Var_L_Date = Var_L_Date & Year(InputDate)
    Get_StdDate = Var_L_Date
End Function

Public Function Get_IsSession(Optional ByVal ShowMessage As Boolean = True, Optional ByVal ForceShowLogin As Boolean = False) As Boolean
    Dim Var_L_IsValid As Boolean
    Var_L_IsValid = False

    'Debug.Print Var_Session_Timestamp

    If Var_Session = "" Or (Var_Session_Timestamp < Now()) Then
        If ShowMessage = True Then
            If MessageBox("Your session is expired, please login again.", "SESSION EXPIRED", "EOO") = vbOK Then
            End If
        End If
        Var_Session = ""
        Var_L_IsValid = False

        If ForceShowLogin = True Then
            DoCmd.OpenForm "APP_LOGIN"
        End If
    Else
        Var_L_IsValid = True
    End If
    Get_IsSession = Var_L_IsValid
End Function

Public Function Get_IsAdmin(ByVal EMPLOYEECODE As String) As Integer
    Get_IsAdmin = IngridData.GetValue("EMPLOYEE_ISADMIN", "t_employee", "EMPLOYEE_CODE='" & EMPLOYEECODE & "'")
End Function

Public Function Get_EmployeeID(ByVal EMPLOYEECODE As String) As String
    Get_EmployeeID = IngridData.GetValue("EMPLOYEE_ID", "t_employee", "EMPLOYEE_CODE='" & EMPLOYEECODE & "'")
End Function

Public Function Get_EmployeeScopeOfWork(ByVal EMPLOYEECODE As String) As String
    Get_EmployeeScopeOfWork = IngridData.GetValue("EMPLOYEE_SCOPEOFWORK", "t_employee", "EMPLOYEE_CODE='" & EMPLOYEECODE & "'")
End Function

Public Function Get_AccessLevel(ByVal MODULECODE As String, ByVal EMPLOYEE_ID As String) As Integer
    Get_AccessLevel = IngridData.GetValue("MODULEACCESS_LEVEL", "q_sys_module_accesslevel", "MODULE_CODE='" & MODULECODE & "' AND EMPLOYEE_ID='" & EMPLOYEE_ID & "'")
End Function

Public Function Get_Key() As String
    Get_Key = IngridData.GetValue("SYS_KEY", "t_sys_settings", "SYS_ID = 1")
End Function

Public Function Get_IsVersionObsolete() As Boolean
    Dim Var_L_Version As Integer
    Dim Var_S_Version As Integer

    Var_L_Version = IngridData.GetValue("app_config_value", "sys_app", "app_config_name = 'version'")
    Var_S_Version = IngridData.GetValue("SYS_APPVERSION", "t_sys_settings", "SYS_ID = 1")

    If Var_S_Version > Var_L_Version Then
        Get_IsVersionObsolete = True
    Else
        Get_IsVersionObsolete = False
    End If
End Function

Public Sub Put_SessionAdd()
        Var_Session_Timestamp = DateAdd("n", 15, Now())
End Sub

Public Sub LockForm(ByVal FormName As Form, ByVal Session As Boolean)
    Dim Var_L_Control As control

    For Each Var_L_Control In FormName.Controls
        If Var_L_Control.ControlType = acCommandButton Or Var_L_Control.ControlType = acTextBox Or Var_L_Control.ControlType = acComboBox Or Var_L_Control.ControlType = acImage Or Var_L_Control.ControlType = acTabCtl Then
            Var_L_Control.Enabled = Session
        End If
    Next
End Sub

Public Function Get_Code(length As Integer)
'PURPOSE: Create a Randomized String of Characters
'SOURCE: www.TheSpreadsheetGuru.com/the-code-vault
'https://www.thespreadsheetguru.com/generate-random-characters/

Dim CharacterBank As Variant
Dim x As Long
Dim str As String

'Test Length Input
  If length < 1 Then
    MsgBox "Length variable must be greater than 0"
    Exit Function
  End If

'Original
'CharacterBank = Array("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", _
  "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", _
  "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "!", "@", _
  "#", "$", "%", "^", "&", "*", "A", "B", "C", "D", "E", "F", "G", "H", _
  "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", _
  "W", "X", "Y", "Z")

'Modified
CharacterBank = Array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", _
  "A", "B", "C", "D", "E", "F", "G", "H", _
  "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", _
  "W", "X", "Y", "Z")

'Randomly Select Characters One-by-One
  For x = 1 To length
    Randomize
    str = str & CharacterBank(Int((UBound(CharacterBank) - LBound(CharacterBank) + 1) * Rnd + LBound(CharacterBank)))
  Next x

'Output Randomly Generated String
  Get_Code = str

End Function

'''
Public Sub Get_ApplicationIcon()
Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim iconName As String

Set db = CurrentDb
Set rs = db.OpenRecordset("SELECT [Name] FROM MSysResources WHERE [Type] = 'ico' AND [Name] = 'ingridlogo.ico'", dbOpenSnapshot)

If Not rs.EOF Then
    iconName = rs!Name
    CurrentDb.Properties("AppIcon") = iconName
    Application.RefreshTitleBar
End If

rs.Close
Set rs = Nothing
Set db = Nothing

End Sub

Sub Get_ApplicationIcon_Export()
    Dim db As DAO.Database
    Dim rs As DAO.Recordset
    Dim attachmentData As DAO.Recordset2
    Dim filePath As String

    ' Check if the "Assets" folder exists, and create it if it doesn't
    If Dir(assetsFolderFullPath, vbDirectory) = "" Then
        MkDir assetsFolderFullPath
    End If

    ' Set the database and recordset
    Set db = CurrentDb
    Set rs = db.OpenRecordset("SELECT * FROM MSysResources WHERE [Type] = 'ico' AND [Name] = 'ingridlogo'", dbOpenSnapshot) 'db.OpenRecordset("MSysResources", dbOpenSnapshot)

    ' Loop through the records in MSysResources
    Do Until rs.EOF
        ' Check if the Data field contains an attachment
        If Not IsNull(rs("Data")) Then
            Set attachmentData = rs("Data").Value

            ' Save the attachment to the current database folder
            Do Until attachmentData.EOF
                filePath = assetsFolderFullPath & "\" & rs("Name") & "." & rs("Extension")

                ' Check if the file already exists
                If Dir(filePath) = "" Then
                    ' File doesn't exist, proceed to save
                    attachmentData("FileData").SaveToFile filePath

                    ' Set as application icon
                    CurrentDb.Properties("AppIcon") = filePath
                    Application.RefreshTitleBar
                End If

                attachmentData.MoveNext
            Loop
        End If
        rs.MoveNext
    Loop

    ' Clean up
    rs.Close
    Set rs = Nothing
    Set db = Nothing

    ' Show message if file export is success
    ' MsgBox "Attachments exported successfully!"
End Sub

Public Function Get_AppName(Optional ByVal IncludeExtension As Boolean = True) As String
    Dim AppName As String
    AppName = Application.CurrentProject.Name

    If IncludeExtension = False Then
        AppName = Replace(AppName, ".accdb", "")
        AppName = Replace(AppName, ".accde", "")
        AppName = Replace(AppName, ".mdb", "")
        AppName = Replace(AppName, ".mde", "")
    End If

    Get_AppName = AppName
End Function

Public Function Get_IsURLValid(ByVal URL As String, Optional ByVal AlwaysOpenURL As Boolean = True, Optional ByVal AlertInvalidURL As Boolean = True) As Boolean
On Error GoTo ErrorHandler

    Dim HttpRequest As Object

    ' Create a WinHttpRequest object
    Set HttpRequest = CreateObject("WinHttp.WinHttpRequest.5.1")

    ' Open a GET request to the URL (HEAD might not be supported)
    HttpRequest.Open "GET", URL, False

    ' Set headers to mimic a browser
    HttpRequest.SetRequestHeader "User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
    HttpRequest.SetRequestHeader "Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"
    HttpRequest.SetRequestHeader "Accept-Language", "en-US,en;q=0.5"

    ' Send the request
    HttpRequest.Send

    ' Print status for debugging
    Debug.Print "Status: " & HttpRequest.Status & " - " & HttpRequest.StatusText

    ' Check the status code (200 means success)
    If HttpRequest.Status = 200 Then
        Get_IsURLValid = True

        If AlwaysOpenURL = True Then
            'CreateObject("Shell.Application").Open URL
            Application.FollowHyperlink URL
        End If
    Else
        Get_IsURLValid = False

        If AlertInvalidURL = True Then
            Call MessageBox("Unable to open attachment in your browser, make sure you have valid URL for your attachment.", "CANNOT OPEN ATTACHMENT", "Error")
        End If
    End If

    ' Clean up
    Set HttpRequest = Nothing
    Exit Function

ErrorHandler:
    If AlertInvalidURL = True Then
        Call MessageBox("Unable to open attachment in your browser, make sure you have valid URL for your attachment.", "CANNOT OPEN ATTACHMENT", "Error")
    Else
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If

    Get_IsURLValid = False
    Set HttpRequest = Nothing
End Function
