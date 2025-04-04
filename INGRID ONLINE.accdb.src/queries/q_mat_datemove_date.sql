﻿SELECT
  mm.TX_DATEDELIVERY as TX_DATE
FROM
  t_q_material_movement AS mm
UNION
SELECT
  mm.TX_DATERECEIVED as TX_DATE
FROM
  t_q_material_movement AS mm
GROUP BY
  mm.TX_DATEDELIVERY,
  mm.TX_DATERECEIVED
ORDER BY
  TX_DATE DESC;
