SELECT CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
j.JOB_TITLE as `Cargo`,
h.START_DATE as `Data de início do cargo`,
d.DEPARTMENT_NAME as `Departamento`
FROM employees as e
INNER JOIN job_history as h
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
INNER JOIN jobs as j
ON h.JOB_ID = j.JOB_ID
INNER JOIN departments as d
ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
