SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
empregos.JOB_TITLE
FROM hr.employees AS employee
INNER JOIN hr.jobs as empregos
ON employee.JOB_ID = empregos.JOB_ID;