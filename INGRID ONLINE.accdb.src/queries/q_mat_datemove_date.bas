dbMemo "SQL" ="SELECT mm.TX_DATEDELIVERY as TX_DATE FROM t_q_material_movement AS mm  UNION SEL"
    "ECT mm.TX_DATEEXECUTED as TX_DATE  FROM t_q_material_movement AS mm  GROUP BY mm"
    ".TX_DATEDELIVERY, mm.TX_DATEEXECUTED\015\012ORDER BY TX_DATE DESC;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbMemo "OrderBy" ="[q_mat_datemove].TX_DATE DESC"
Begin
    Begin
        dbText "Name" ="TX_DATE"
        dbLong "AggregateType" ="-1"
    End
End
