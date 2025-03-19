SELECT
  mm.TX_ROWID,
  mm.TX_DIRECTION,
  IIf(
    mm.TX_DATEDELIVERY = #7/23/2024#,
    '1', '0'
  ) AS TX_CODE_D,
  IIf(
    mm.TX_DATERECEIVED = #7/23/2024#,
    '1', '0'
  ) AS TX_CODE_R,
  mm.TX_ATT_LINK,
  '(ORIGIN: ' & mm.TX_ORIGIN & ' • DEST.: ' & mm.TX_DESTINATION & ' • PLANT: ' & mm.TX_PLANT & (
    chr(13)+ chr(10)
  )& 'MANIFEST: ' & mm.TX_MANIFEST & (
    chr(13)+ chr(10)
  )& 'COFF: ' & mm.TX_PO & ') AS DESCRIPTION'
FROM
  t_q_material_movement AS mm
WHERE
  (
    (
      mm.TX_DATEDELIVERY = #7/23/2024#
      OR mm.TX_DATERECEIVED = #7/23/2024#
    )
  )
GROUP BY
  mm.TX_ROWID,
  mm.TX_DIRECTION,
  IIf(
    mm.TX_DATEDELIVERY = #7/23/2024#,
    '1', '0'
  ),
  IIf(
    mm.TX_DATERECEIVED = #7/23/2024#,
    '1', '0'
  ),
  mm.TX_ATT_LINK,
  '(ORIGIN: ' & mm.TX_ORIGIN & ' • DEST.: ' & mm.TX_DESTINATION & ' • PLANT: ' & mm.TX_PLANT & (
    chr(13)+ chr(10)
  )& 'MANIFEST: ' & mm.TX_MANIFEST & (
    chr(13)+ chr(10)
  )& 'COFF: ' & mm.TX_PO;
