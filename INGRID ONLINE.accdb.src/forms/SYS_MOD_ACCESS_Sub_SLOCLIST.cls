Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Form_Error(DataErr As Integer, Response As Integer)
    'This code below to anticipate Write Conflict
    'source : https://stackoverflow.com/questions/578452/suppress-write-conflict-message-in-access-vba#:~:text=This%20is%20a%20common%20Access%20error,%20and%20it's,form%20before%20updating%20the%20same%20record%20via%20SQL.
    If DataErr = 7787 Then
        Response = acDataErrContinue
        'Me.Recordset.MoveFirst
        'Me.Recordset.MoveLast
    End If
End Sub
