SELECT 
CONCAT(empls1.FIRST_NAME, ' ', empls1.LAST_NAME) AS 'Nome completo funcionário 1',
empls1.SALARY AS 'Salário funcionário 1',
empls1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(empls2.FIRST_NAME, ' ', empls2.LAST_NAME) AS 'Nome completo funcionário 2',
empls2.SALARY AS 'Salário funcionário 2',
empls2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
hr.employees empls1,
hr.employees empls2
WHERE
empls1.JOB_ID = empls2.JOB_ID
AND CONCAT(empls1.FIRST_NAME, ' ', empls1.LAST_NAME) <> CONCAT(empls2.FIRST_NAME, ' ', empls2.LAST_NAME)
ORDER BY `Nome completo funcionário 1` ASC, `Nome completo funcionário 2` ASC;
