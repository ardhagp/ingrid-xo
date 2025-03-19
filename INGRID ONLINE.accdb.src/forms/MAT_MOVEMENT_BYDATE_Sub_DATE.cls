Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Dim Var_L_FindDate As Date

Private Sub btn_OpenThisDate_Click()
    Call Post_Find
End Sub

Private Sub Post_Find()
On Error GoTo ErrorHandle

    txt_date.SetFocus
    Var_MAT_Date = txt_date.Value
    Var_SQL_Where = ""

    If Len(Var_MAT_Find) > 0 Then
        Var_SQL_Where = " AND ((mm.D_MATERIALNAME like '%" & Var_MAT_Find & "%') OR (mm.TX_PO like '%" & Var_MAT_Find & "%') OR (mm.TX_ORIGIN like '%" & Var_MAT_Find & "%') OR (mm.TX_DESTINATION like '%" & Var_MAT_Find & "%') OR (mm.TX_MANIFEST like '%" & Var_MAT_Find & "%')) "
    End If

    Var_SQL = "SELECT mm.TX_ROWID, mm.TX_DIRECTION, IIf(mm.TX_DATEDELIVERY=#" & Get_StdDate(Var_MAT_Date) & "#,'1','0') AS TX_CODE_D, IIf(mm.TX_DATERECEIVED=#" & Get_StdDate(Var_MAT_Date) & "#,'1','0') AS TX_CODE_R, mm.TX_ATT_LINK,' • ' & mm.TX_ORIGIN & ' ' & ChrW(8680) & ' ' & mm.TX_DESTINATION & (chr(13) + chr(10)) & ' • PLANT: ' & mm.TX_PLANT & ' • COFF: ' & mm.TX_PO & (chr(13) + chr(10)) & ' • MANIFEST: ' & mm.TX_MANIFEST AS DESCRIPTION" & _
                " FROM t_q_material_movement AS mm " & _
                " WHERE ((mm.TX_DATEDELIVERY = #" & Get_StdDate(Var_MAT_Date) & "# OR mm.TX_DATERECEIVED = #" & Get_StdDate(Var_MAT_Date) & "#) " & Var_SQL_Where & ")" & _
                " GROUP BY mm.TX_ROWID, mm.TX_DIRECTION, IIf(mm.TX_DATEDELIVERY=#" & Get_StdDate(Var_MAT_Date) & "#,'1','0'), IIf(mm.TX_DATERECEIVED=#" & Get_StdDate(Var_MAT_Date) & "#,'1','0'), mm.TX_ORIGIN, mm.TX_DESTINATION, mm.TX_ATT_LINK,' • ' & mm.TX_ORIGIN & ' ' & ChrW(8680) & ' ' & mm.TX_DESTINATION & (chr(13) + chr(10)) & ' • PLANT: ' & mm.TX_PLANT & ' • COFF: ' & mm.TX_PO & (chr(13) + chr(10)) & ' • MANIFEST: ' & mm.TX_MANIFEST "

    'Debug.Print Var_SQL

    Call Post_Execute
ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub

Private Sub Post_Execute()
On Error GoTo ErrorHandle
    'Debug.Print Var_SQL

    CurrentDb.QueryDefs("q_mat_datemove_detail").SQL = Var_SQL

    Me.Parent![MAT_MOVEMENT_BYDATE_Sub_DETAIL].SetFocus
    Me.Parent![MAT_MOVEMENT_BYDATE_Sub_DETAIL].Requery
    Me.Parent![MAT_MOVEMENT_BYDATE_Sub_DETAIL].Form.RecordSource = Var_SQL

ErrorHandle:
    If Err.Number <> 0 Then
        Call Post_ErrorMessage(Err.Number, Err.DESCRIPTION)
    End If
End Sub
