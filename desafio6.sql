SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome Completo`,
jobs.JOB_TITLE AS `Cargo`,
job_history.START_DATE AS `Data de início do cargo`,
department.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS job_history
INNER JOIN hr.employees AS employees ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
INNER JOIN hr.jobs AS jobs ON jobs.JOB_ID = job_history.JOB_ID
INNER JOIN hr.departments AS department ON department.DEPARTMENT_ID = job_history.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
