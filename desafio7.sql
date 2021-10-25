SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS `Nome Completo`,
jh.START_DATE AS `Data de início`,
employees.SALARY AS `Salário`
FROM hr.employees AS employees
INNER JOIN hr.job_history AS jh ON jh.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE  MONTH(jh.START_DATE) IN (1, 2, 3)
ORDER BY `Nome Completo`, `Data de início`;
