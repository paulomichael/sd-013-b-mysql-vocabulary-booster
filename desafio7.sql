SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
jh.START_DATE AS `Data de início`,
e.SALARY AS `Salário`
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE START_DATE LIKE '%-01-%' OR START_DATE LIKE '%-02-%' OR START_DATE LIKE '%-03-%'
ORDER BY `Nome completo`, START_DATE;
