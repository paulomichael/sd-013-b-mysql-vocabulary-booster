SELECT CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS `Nome completo`,
Empregos.JOB_TITLE AS `Cargo`,
jobs_history.START_DATE AS `Data de início do cargo`,
Departamentos.DEPARTMENT_NAME AS `Departamento`

FROM hr.employees AS employee
INNER JOIN hr.job_history as jobs_history
ON employee.EMPLOYEE_ID = jobs_history.EMPLOYEE_ID

INNER JOIN hr.departments AS Departamentos
ON employee.DEPARTMENT_ID = Departamentos.DEPARTMENT_ID

INNER JOIN hr.jobs AS Empregos
ON employee.JOB_ID = Empregos.JOB_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
