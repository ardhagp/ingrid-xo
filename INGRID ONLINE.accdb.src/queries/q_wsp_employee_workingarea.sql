SELECT
  t_workingarea.WORKINGAREA_ROWID,
  (
    t_plant.PLANT_CODE & " - " & t_sloc.SLOC_CODE & " - " & t_sloc.SLOC_NAME
  ) AS [WORKING AREA],
  t_workingarea.WORKINGAREA_ACCESS,
  t_workingarea.WORKINGAREA_EMPLOYEEID
FROM
  t_plant
  INNER JOIN (
    t_sloc
    INNER JOIN t_workingarea ON t_sloc.SLOC_ID = t_workingarea.WORKINGAREA_SLOCID
  ) ON t_plant.PLANT_ID = t_sloc.SLOC_PLANT;
