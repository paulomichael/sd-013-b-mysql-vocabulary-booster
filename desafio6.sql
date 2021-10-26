SELECT h.START_DATE AS `Data de início do cargo`,
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
j.JOB_TITLE AS `Cargo`,
d.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS h
JOIN hr.employees AS e ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
JOIN hr.jobs AS j ON j.JOB_ID = h.JOB_ID
JOIN hr.departments AS d ON d.DEPARTMENT_ID = h.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`
;
