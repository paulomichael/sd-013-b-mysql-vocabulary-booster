SELECT
CONCAT(employees.first_name, ' ', employees.last_name) AS `Nome completo`,
jobs.job_title AS `Cargo`,
job_history.start_date AS 'Data de início do cargo',
departments.department_name AS 'Departamento'
FROM hr.job_history AS job_history
INNER JOIN hr.jobs AS jobs ON jobs.job_id = job_history.job_id
INNER JOIN hr.employees AS employees ON job_history.employee_id = employees.employee_id
INNER JOIN hr.departments AS departments ON departments.department_id = employees.department_id
ORDER BY `Nome completo` DESC, Cargo;
