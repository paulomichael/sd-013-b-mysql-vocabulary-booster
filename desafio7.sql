SELECT upper(CONCAT(he.FIRST_NAME, ' ', he.LAST_NAME)) AS `Nome completo`, hjo.start_date AS `Data de início`, he.SALARY AS `Salário`
FROM hr.job_history AS hjo
INNER JOIN hr.employees AS he
ON hjo.EMPLOYEE_ID = he.EMPLOYEE_ID AND MONTH(hjo.start_date) IN (1, 2, 3)
INNER JOIN hr.jobs AS hj ON hj.JOB_ID = hjo.JOB_ID
INNER JOIN hr.departments AS hd ON hd.DEPARTMENT_ID = hjo.DEPARTMENT_ID
ORDER BY `Nome completo`, `Data de início` ASC;
