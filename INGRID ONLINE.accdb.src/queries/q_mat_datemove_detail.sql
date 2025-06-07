SELECT
  mm.TX_ROWID,
  mm.TX_DIRECTION,
  IIf(
    mm.TX_DATEDELIVERY = #8/24/2023#,
    '1', '0'
  ) AS TX_CODE_D,
  IIf(
    mm.TX_DATERECEIVED = #8/24/2023#,
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
      mm.TX_DATEDELIVERY = #8/24/2023#
      OR mm.TX_DATERECEIVED = #8/24/2023#
    )
    AND (
      (
        mm.D_MATERIALNAME like '%H0801/DT/PST-VIII/2023%'
      )
      OR (
        mm.TX_PO like '%H0801/DT/PST-VIII/2023%'
      )
      OR (
        mm.TX_ORIGIN like '%H0801/DT/PST-VIII/2023%'
      )
      OR (
        mm.TX_DESTINATION like '%H0801/DT/PST-VIII/2023%'
      )
      OR (
        mm.TX_MANIFEST like '%H0801/DT/PST-VIII/2023%'
      )
    )
  )
GROUP BY
  mm.TX_ROWID,
  mm.TX_DIRECTION,
  IIf(
    mm.TX_DATEDELIVERY = #8/24/2023#,
    '1', '0'
  ),
  IIf(
    mm.TX_DATERECEIVED = #8/24/2023#,
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
