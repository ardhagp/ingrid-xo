SELECT
  mm.TX_ORIGIN AS [ADDRESS]
FROM
  t_material_movement AS mm
WHERE
  (
    mm.TX_ORIGIN is not null
    or len(mm.TX_ORIGIN)<> 0
  )
GROUP BY
  mm.TX_ORIGIN
UNION
SELECT
  mm.TX_DESTINATION AS [ADDRESS]
FROM
  t_material_movement AS mm
WHERE
  (
    mm.TX_DESTINATION is not null
    or len(mm.TX_DESTINATION)<> 0
  )
GROUP BY
  mm.TX_DESTINATION
ORDER BY
  ADDRESS;
