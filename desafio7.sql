SELECT
UCASE(CONCAT(employee.first_name, ' ', employee.last_name)) AS `Nome completo`,
job_history.start_date AS 'Data de início',
employee.salary AS 'Salário'
FROM hr.employees AS employee
INNER JOIN hr.job_history AS job_history ON job_history.employee_id = employee.employee_id
WHERE MONTH(job_history.start_date) IN (01, 02, 03)
ORDER BY `Nome completo` ASC, `Data de início` ASC;
