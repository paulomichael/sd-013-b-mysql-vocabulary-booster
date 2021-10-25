SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome Completo`,
job.JOB_TITLE AS `Cargo`,
jh.START_DATE AS `Data de início do cargo`,
department.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS employees
INNER JOIN hr.job_history AS jh ON jh.EMPLOYEE_ID = employees.EMPLOYEE_ID
INNER JOIN hr.jobs AS job ON job.JOB_ID = jh.JOB_ID
INNER JOIN hr.departments AS department ON department.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo`;
