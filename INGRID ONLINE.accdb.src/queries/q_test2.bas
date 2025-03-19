﻿dbMemo "SQL" ="SELECT mm.TX_ROWID, mm.TX_DIRECTION, IIf(mm.TX_DATEDELIVERY=#7/23/2024#,'1','0')"
    " AS TX_CODE_D, IIf(mm.TX_DATERECEIVED=#7/23/2024#,'1','0') AS TX_CODE_R, mm.TX_A"
    "TT_LINK, '(ORIGIN: ' & mm.TX_ORIGIN & ' • DEST.: ' & mm.TX_DESTINATION & ' • PLA"
    "NT: ' & mm.TX_PLANT & (chr(13) + chr(10)) & 'MANIFEST: ' & mm.TX_MANIFEST & (chr"
    "(13) + chr(10)) & 'COFF: ' & mm.TX_PO & ') AS DESCRIPTION'\015\012FROM t_q_mater"
    "ial_movement AS mm\015\012WHERE ((mm.TX_DATEDELIVERY = #7/23/2024# OR mm.TX_DATE"
    "RECEIVED = #7/23/2024#) )\015\012GROUP BY mm.TX_ROWID, mm.TX_DIRECTION, IIf(mm.T"
    "X_DATEDELIVERY=#7/23/2024#,'1','0'), IIf(mm.TX_DATERECEIVED=#7/23/2024#,'1','0')"
    ", mm.TX_ATT_LINK, '(ORIGIN: ' & mm.TX_ORIGIN & ' • DEST.: ' & mm.TX_DESTINATION "
    "& ' • PLANT: ' & mm.TX_PLANT & (chr(13) + chr(10)) & 'MANIFEST: ' & mm.TX_MANIFE"
    "ST & (chr(13) + chr(10)) & 'COFF: ' & mm.TX_PO;\015\012"
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
        dbText "Name" ="TX_CODE_D"
    End
    Begin
        dbText "Name" ="TX_CODE_R"
    End
End
