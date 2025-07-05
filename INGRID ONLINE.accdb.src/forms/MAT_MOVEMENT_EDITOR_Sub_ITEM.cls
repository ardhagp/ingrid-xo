Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Form_Current()
    If Var_MAT_Direction = "IN" Then
        Me!D_MIAPNEW.ColumnHidden = True
        Me!D_DCDCODENEW.ColumnHidden = True
    ElseIf Var_MAT_Direction = "OUT" Then

    ElseIf Var_MAT_Direction = "BIN" Then

    ElseIf Var_MAT_Direction = "TMTM" Then
        Me!D_MIAPNEW.ColumnHidden = False
        Me!D_DCDCODENEW.ColumnHidden = False
    End If
End Sub
