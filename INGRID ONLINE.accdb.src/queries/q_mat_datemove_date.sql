SELECT
  mm.TX_DATEDELIVERY as TX_DATE
FROM
  t_q_material_movement AS mm
WHERE
  mm.TX_DATEDELIVERY is not null
  AND (
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
UNION
SELECT
  mm.TX_DATERECEIVED as TX_DATE
FROM
  t_q_material_movement AS mm
WHERE
  mm.TX_DATERECEIVED is not null
  AND (
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
GROUP BY
  mm.TX_DATEDELIVERY,
  mm.TX_DATERECEIVED
ORDER BY
  TX_DATE DESC;
