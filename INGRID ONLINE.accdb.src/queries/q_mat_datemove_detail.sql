SELECT
  mm.TX_ROWID,
  mm.TX_DIRECTION,
  IIf(
    mm.TX_DATEDELIVERY = #7/20/2024#,
    '1', '0'
  ) AS TX_CODE_D,
  IIf(
    mm.TX_DATERECEIVED = #7/20/2024#,
    '1', '0'
  ) AS TX_CODE_R,
  mm.TX_ATT_LINK,
  ' • ' & mm.TX_ORIGIN & ' ' & ChrW(8680)& ' ' & mm.TX_DESTINATION & (
    chr(13)+ chr(10)
  )& ' • PLANT: ' & mm.TX_PLANT & ' • COFF: ' & mm.TX_PO & (
    chr(13)+ chr(10)
  )& ' • MANIFEST: ' & mm.TX_MANIFEST AS DESCRIPTION
FROM
  t_q_material_movement AS mm
WHERE
  (
    (
      mm.TX_DATEDELIVERY = #7/20/2024#
      OR mm.TX_DATERECEIVED = #7/20/2024#
    )
  )
GROUP BY
  mm.TX_ROWID,
  mm.TX_DIRECTION,
  IIf(
    mm.TX_DATEDELIVERY = #7/20/2024#,
    '1', '0'
  ),
  IIf(
    mm.TX_DATERECEIVED = #7/20/2024#,
    '1', '0'
  ),
  mm.TX_ORIGIN,
  mm.TX_DESTINATION,
  mm.TX_ATT_LINK,
  ' • ' & mm.TX_ORIGIN & ' ' & ChrW(8680)& ' ' & mm.TX_DESTINATION & (
    chr(13)+ chr(10)
  )& ' • PLANT: ' & mm.TX_PLANT & ' • COFF: ' & mm.TX_PO & (
    chr(13)+ chr(10)
  )& ' • MANIFEST: ' & mm.TX_MANIFEST;
