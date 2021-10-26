SELECT UCASE(CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME)) AS `Nome Completo`,
jh.START_DATE AS `Data de início`,
employee.SALARY AS `Salário`
FROM hr.employees AS employee
INNER JOIN hr.job_history AS jh ON jh.EMPLOYEE_ID = employee.EMPLOYEE_ID
WHERE  MONTH(jh.START_DATE) IN (1, 2, 3)
ORDER BY `Nome Completo`, `Data de início`;
