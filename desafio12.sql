SELECT CONCAT(emp01.FIRST_NAME, ' ', emp01.LAST_NAME) AS `Nome completo funcionário 1`,
emp01.SALARY AS `Salário funcionário 1`,
emp01.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(emp02.FIRST_NAME, ' ', emp02.LAST_NAME) AS `Nome completo funcionário 2`,
emp02.SALARY AS `Salário funcionário 2`,
emp02.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS emp01, hr.employees AS emp02
WHERE emp01.JOB_ID = emp02.JOB_ID
AND emp01.EMPLOYEE_ID <> emp02.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
