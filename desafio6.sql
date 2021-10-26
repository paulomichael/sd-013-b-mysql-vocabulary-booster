SELECT e.full_name AS `Nome completo`,
j.job_title AS `Cargo`,
e.hire_date AS `Data de início do cargo`,
d.department_name AS `Departamento`
FROM (SELECT CONCAT(first_name, ' ', last_name) as full_name, job_id, hire_date, department_id
FROM hr.employees) AS e
JOIN hr.jobs AS j
ON j.job_id = e.job_id
JOIN hr.departments AS d
ON d.department_id = e.department_id
ORDER BY e.full_name DESC, d.department_name ASC;
