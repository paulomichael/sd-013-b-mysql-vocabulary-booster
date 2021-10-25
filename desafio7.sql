SELECT 
    UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS `Nome completo`,
    jh.start_date AS `Data de início`,
    e.salary AS `Salário`
FROM hr.employees AS e 
JOIN hr.job_history AS jh ON e.employee_id = jh.employee_id
WHERE MONTH(jh.start_date) IN(01, 02, 03)
#https://stackoverflow.com/questions/851236/where-clause-to-find-all-records-in-a-specific-month
ORDER BY `Nome completo`,
		`Data de início`;
