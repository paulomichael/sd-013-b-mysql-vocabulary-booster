SELECT CONCAT(emp.FIRST_NAME,' ', emp.LAST_NAME) AS 'Nome completo',
  jb.JOB_TITLE AS 'Cargo',
  jbhist.START_DATE AS 'Data de início do cargo',
  dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS `jbhist`
INNER JOIN hr.jobs AS `jb`
ON jbhist.JOB_ID = jb.JOB_ID
INNER JOIN hr.departments AS `dep`
ON jbhist.DEPARTMENT_ID = dep.DEPARTMENT_ID
INNER JOIN hr.employees AS `emp`
ON jbhist.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
