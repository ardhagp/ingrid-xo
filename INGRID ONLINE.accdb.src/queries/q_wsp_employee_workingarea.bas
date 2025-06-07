dbMemo "SQL" ="SELECT t_workingarea.WORKINGAREA_ROWID, (t_plant.PLANT_CODE & \" - \" & t_sloc.S"
    "LOC_CODE & \" - \" & t_sloc.SLOC_NAME) AS [WORKING AREA], t_workingarea.WORKINGA"
    "REA_ACCESS, t_workingarea.WORKINGAREA_EMPLOYEEID\015\012FROM t_plant INNER JOIN "
    "(t_sloc INNER JOIN t_workingarea ON t_sloc.SLOC_ID = t_workingarea.WORKINGAREA_S"
    "LOCID) ON t_plant.PLANT_ID = t_sloc.SLOC_PLANT;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbByte "RecordsetType" ="0"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="t_workingarea.WORKINGAREA_ROWID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2610"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="t_workingarea.WORKINGAREA_ACCESS"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2640"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="t_workingarea.WORKINGAREA_EMPLOYEEID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="WORKING AREA"
        dbInteger "ColumnWidth" ="2685"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
