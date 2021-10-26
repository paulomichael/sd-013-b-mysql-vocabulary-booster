SELECT e.full_name AS `Nome completo`,
j.job_title AS `Cargo`,
job_h.start_date AS `Data de início do cargo`,
d.department_name AS `Departamento`
FROM hr.job_history AS job_h
JOIN (SELECT employee_id, CONCAT(first_name, ' ', last_name) AS full_name FROM hr.employees) AS e
ON e.employee_id = job_h.employee_id
JOIN hr.jobs AS j
ON j.job_id = job_h.job_id
JOIN hr.departments AS d
ON d.department_id = job_h.department_id
ORDER BY e.full_name DESC, j.job_title ASC;
