SELECT UCASE(CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME)) AS `Nome Completo`,
jh.START_DATE AS `Data de início`,
employee.SALARY AS `Salário`
FROM hr.job_history AS jh
INNER JOIN hr.employees AS employee ON jh.EMPLOYEE_ID = employee.EMPLOYEE_ID
WHERE MONTH(START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo` ASC, `Data de início` ASC;
