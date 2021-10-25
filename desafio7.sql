SELECT 
CONCAT(UCASE(empls.FIRST_NAME), ' ', UCASE(empls.LAST_NAME)) AS 'Nome completo',
jh.START_DATE AS 'Data de início',
empls.SALARY AS 'Salário'
FROM hr.employees empls
INNER JOIN hr.job_history jh
ON empls.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo` ASC, jh.START_DATE ASC;
