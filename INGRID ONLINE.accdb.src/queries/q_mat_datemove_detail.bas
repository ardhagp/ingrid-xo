dbMemo "SQL" ="SELECT mm.TX_ROWID, mm.TX_DIRECTION, IIf(mm.TX_DATEDELIVERY=#6/9/2025#,'1','0') "
    "AS TX_CODE_D, IIf(mm.TX_DATEEXECUTED=#6/9/2025#,'1','0') AS TX_CODE_R, mm.TX_ATT"
    "_LINK, ' • ' & mm.TX_ORIGIN & ' ' & ChrW(8680) & ' ' & mm.TX_DESTINATION & (chr("
    "13) + chr(10)) & ' • PLANT: ' & mm.TX_PLANT & ' • COFF: ' & mm.TX_PO & (chr(13) "
    "+ chr(10)) & ' • MANIFEST: ' & mm.TX_MANIFEST AS DESCRIPTION\015\012FROM t_q_mat"
    "erial_movement AS mm\015\012WHERE ((mm.TX_DATEDELIVERY = #6/9/2025# OR mm.TX_DAT"
    "EEXECUTED = #6/9/2025#) )\015\012GROUP BY mm.TX_ROWID, mm.TX_DIRECTION, IIf(mm.T"
    "X_DATEDELIVERY=#6/9/2025#,'1','0'), IIf(mm.TX_DATEEXECUTED=#6/9/2025#,'1','0'), "
    "mm.TX_ORIGIN, mm.TX_DESTINATION, mm.TX_ATT_LINK, ' • ' & mm.TX_ORIGIN & ' ' & Ch"
    "rW(8680) & ' ' & mm.TX_DESTINATION & (chr(13) + chr(10)) & ' • PLANT: ' & mm.TX_"
    "PLANT & ' • COFF: ' & mm.TX_PO & (chr(13) + chr(10)) & ' • MANIFEST: ' & mm.TX_M"
    "ANIFEST;\015\012"
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
        dbText "Name" ="mm.TX_ROWID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TX_CODE_D"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TX_CODE_R"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="mm.TX_DIRECTION"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="mm.TX_ATT_LINK"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DESCRIPTION"
        dbLong "AggregateType" ="-1"
    End
End
