SELECT CONCAT(he.FIRST_NAME, ' ', he.LAST_NAME) AS `Nome Completo`, hj.JOB_TITLE AS 'Cargo', hjo.start_date AS `Data de início do cargo`, hd.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS hjo
INNER JOIN hr.employees AS he
ON hjo.EMPLOYEE_ID = he.EMPLOYEE_ID
INNER JOIN hr.jobs AS hj ON hj.JOB_ID = hjo.JOB_ID
INNER JOIN hr.departments AS hd ON hd.DEPARTMENT_ID = hjo.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo ASC;
