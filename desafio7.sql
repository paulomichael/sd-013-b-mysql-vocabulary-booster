SELECT
  UCASE(CONCAT(e.first_name, ' ', e.last_name)) as `Nome completo`,
  h.START_DATE as `Data de início`,
  e.salary `Salário`
FROM employees as e
JOIN job_history as h
ON e.employee_id = h.employee_id
WHERE MONTH(h.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
