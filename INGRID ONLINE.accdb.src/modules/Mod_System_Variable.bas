Attribute VB_Name = "Mod_System_Variable"
Option Compare Database
Option Explicit

'Variables for System
Public Var_Session As String
Public Var_Session_Timestamp As Date
Public Var_Host As String
Public Var_LastFormOpen As String
Public Var_EmployeeID As String
Public Var_EmployeeCODE As String
Public Var_IsPasswordSet As Boolean
Public Var_Password As String
Public Var_IsAdmin As Integer
Public Var_Role As String
Public Var_SQL As String
Public Var_SQL_Where As String
Public Var_Session_ClosingForm As Boolean
Public Var_IsAppObsolete As Boolean

' For Assets Management
Public assetsFolder As String
Public assetsFolderFullPath As String

' Class for System
Public SysLog As New Cls_System_Log
Public IngridData As New Cls_Data_Get
