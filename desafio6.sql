SELECT 
CONCAT (employees_table.first_name, ' ', employees_table.last_name) AS `Nome completo`,
jobs_table.JOB_TITLE AS `Cargo`,
employees_table.HIRE_DATE AS `Data de início do cargo`,
department_table.DEPARTMENT_NAME AS `Departamento`
FROM
hr.employees AS employees_table
INNER JOIN hr.jobs AS jobs_table ON employees_table.JOB_ID = jobs_table.JOB_ID
INNER JOIN hr.departments AS department_table ON employees_table.DEPARTMENT_ID  = department_table.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC
;
