SELECT
  t_moduleaccess.MODULEACCESS_LEVEL,
  t_module.MODULE_CODE,
  t_employee.[EMPLOYEE_ID]
FROM
  t_module
  INNER JOIN (
    t_employee
    INNER JOIN t_moduleaccess ON t_employee.EMPLOYEE_ID = t_moduleaccess.MODULEACCESS_EMPLOYEEID
  ) ON t_module.MODULE_ID = t_moduleaccess.MODULEACCESS_MODULEID;
