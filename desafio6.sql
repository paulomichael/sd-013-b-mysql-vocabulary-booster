SELECT
CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
j.job_title AS `Cargo`,
je.start_date AS `Data de início do cargo`,
d.department_name AS `Departamento`
FROM
hr.employees AS e
INNER JOIN
hr.job_history AS je ON e.employee_id = je.employee_id
INNER JOIN
hr.jobs AS j ON j.job_id = je.job_id
INNER JOIN
hr.departments AS d ON d.department_id = je.department_id
ORDER BY `Nome completo` DESC, `Cargo` ASC;