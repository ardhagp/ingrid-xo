dbMemo "SQL" ="SELECT SYS_APPVERSION\015\012FROM t_sys_settings\015\012WHERE SYS_ID = 1;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="sys_app.app_config_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="sys_app.app_config_value"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SYS_APPVERSION"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="t_sys_settings.SYS_KEY"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="t_sys_settings.SYS_APPVERSION"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="t_sys_settings.SYS_ID"
        dbLong "AggregateType" ="-1"
    End
End
