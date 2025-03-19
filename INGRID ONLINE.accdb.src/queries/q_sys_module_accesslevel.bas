dbMemo "SQL" ="SELECT t_moduleaccess.MODULEACCESS_LEVEL, t_module.MODULE_CODE, t_employee.[EMPL"
    "OYEE_ID]\015\012FROM t_module INNER JOIN (t_employee INNER JOIN t_moduleaccess O"
    "N t_employee.EMPLOYEE_ID = t_moduleaccess.MODULEACCESS_EMPLOYEEID) ON t_module.M"
    "ODULE_ID = t_moduleaccess.MODULEACCESS_MODULEID;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="t_moduleaccess.MODULEACCESS_LEVEL"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="t_module.MODULE_CODE"
        dbInteger "ColumnWidth" ="2205"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="t_employee.[EMPLOYEE_ID]"
        dbLong "AggregateType" ="-1"
    End
End
