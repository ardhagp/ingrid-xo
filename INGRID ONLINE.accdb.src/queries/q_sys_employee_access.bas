Operation =1
Option =0
Begin InputTables
    Name ="t_module"
    Name ="t_moduleaccess"
End
Begin OutputColumns
    Expression ="t_moduleaccess.MODULEACCESS_ROWID"
    Expression ="t_module.MODULE_CODE"
    Expression ="t_moduleaccess.MODULEACCESS_LEVEL"
    Expression ="t_moduleaccess.MODULEACCESS_EMPLOYEEID"
End
Begin Joins
    LeftTable ="t_module"
    RightTable ="t_moduleaccess"
    Expression ="t_module.MODULE_ID = t_moduleaccess.MODULEACCESS_MODULEID"
    Flag =1
End
Begin OrderBy
    Expression ="t_module.MODULE_CODE"
    Flag =0
    Expression ="t_moduleaccess.MODULEACCESS_EMPLOYEEID"
    Flag =0
End
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
        dbText "Name" ="t_module.MODULE_CODE"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="t_moduleaccess.MODULEACCESS_LEVEL"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="t_moduleaccess.MODULEACCESS_EMPLOYEEID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="t_moduleaccess.MODULEACCESS_ROWID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =59
    Top =72
    Right =1288
    Bottom =750
    Left =-1
    Top =-1
    Right =1205
    Bottom =261
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="t_module"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =468
        Bottom =156
        Top =0
        Name ="t_moduleaccess"
        Name =""
    End
End
