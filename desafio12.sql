SELECT
CONCAT(Inf1.FIRST_NAME, ' ', Inf1.LAST_NAME) AS `Nome completo funcionário 1`,
Inf1.SALARY AS `Salário funcionário 1`,
Inf1.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(Inf2.FIRST_NAME, ' ', Inf2.LAST_NAME) AS `Nome completo funcionário 2`,
Inf2.SALARY AS `Salário funcionário 2`,
Inf2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM 
hr.employees AS Inf1,
hr.employees AS Inf2
WHERE
Inf1.JOB_ID = Inf2.JOB_ID AND Inf1.EMPLOYEE_ID <> Inf2.EMPLOYEE_ID
ORDER BY 
`Nome completo funcionário 1`,
`Nome completo funcionário 2`;
