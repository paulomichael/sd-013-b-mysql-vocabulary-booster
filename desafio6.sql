SELECT employee_hire.full_name AS `Nome completo`,
j.job_title AS `Cargo`,
employee_hire.hire_date AS `Data de início do cargo`,
d.department_name AS `Departamento`
FROM (SELECT CONCAT(first_name, ' ', last_name) as full_name, job_id, hire_date, department_id FROM hr.employees AS e
WHERE NOT EXISTS (
SELECT * FROM hr.job_history
WHERE employee_id = e.employee_id
)) AS employee_hire
JOIN hr.jobs AS j
ON j.job_id = employee_hire.job_id
JOIN hr.departments AS d
ON d.department_id = employee_hire.department_id
ORDER BY employee_hire.full_name DESC, d.department_name ASC;
