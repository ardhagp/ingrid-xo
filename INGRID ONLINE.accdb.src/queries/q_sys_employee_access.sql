SELECT
  t_moduleaccess.MODULEACCESS_ROWID,
  t_module.MODULE_CODE,
  t_moduleaccess.MODULEACCESS_LEVEL,
  t_moduleaccess.MODULEACCESS_EMPLOYEEID
FROM
  t_module
  INNER JOIN t_moduleaccess ON t_module.MODULE_ID = t_moduleaccess.MODULEACCESS_MODULEID
ORDER BY
  t_module.MODULE_CODE,
  t_moduleaccess.MODULEACCESS_EMPLOYEEID;
