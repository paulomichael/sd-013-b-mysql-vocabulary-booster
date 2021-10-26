SELECT
UCASE(e.full_name) AS `Nome completo`,
job_h.start_date AS `Data de início`,
e.salary AS `Salário`
FROM hr.job_history AS job_h
JOIN (SELECT employee_id, CONCAT(first_name, ' ', last_name) AS full_name, salary FROM hr.employees) AS e
ON e.employee_id = job_h.employee_id
WHERE MONTH(start_date) BETWEEN '01' AND '03'
ORDER BY e.full_name, job_h.start_date;
