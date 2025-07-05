Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Form_Current()
    If Var_MAT_Mvt = "IN" Then
        Me!D_BINLOC.ColumnHidden = False
        Me!D_BINLOCNEW.ColumnHidden = True
    ElseIf Var_MAT_Mvt = "OUT" Then
        Me!D_BINLOC.ColumnHidden = False
        Me!D_BINLOCNEW.ColumnHidden = True
    ElseIf Var_MAT_Mvt = "TMTM" Then
        Me!D_BINLOC.ColumnHidden = False
        Me!D_BINLOCNEW.ColumnHidden = True
    ElseIf Var_MAT_Mvt = "BIN" Then
        Me!D_BINLOC.ColumnHidden = False
        Me!D_BINLOCNEW.ColumnHidden = False
    End If
End Sub

Private Sub Form_Load()
End Sub
