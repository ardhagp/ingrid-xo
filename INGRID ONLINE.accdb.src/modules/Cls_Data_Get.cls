VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Cls_Data_Get"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Public Function GetValue(ByVal ColumnName As String, ByVal TableName As String, Optional ByVal WhereClause As String = "")
On Error GoTo ErrorHandle

    Dim rs As DAO.Recordset
    Dim SQLResult As String

    If Len(Trim(WhereClause)) = 0 Then
        Var_SQL = "SELECT " & ColumnName & " as RecordValue FROM " & TableName
    Else
        Var_SQL = "SELECT " & ColumnName & " as RecordValue FROM " & TableName & " WHERE " & WhereClause
    End If

    Debug.Print Var_SQL
    Set rs = CurrentDb.OpenRecordset(Var_SQL)
    SQLResult = rs![RecordValue]

    rs.Close
    Set rs = Nothing

    GetValue = SQLResult

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Function
