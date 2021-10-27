

SELECT * FROM hr.jobs;

SELECT 
CONCAT(UPPER(e.FIRST_NAME), ' ', UPPER(e.LAST_NAME)) AS `Nome completo`,
J.START_DATE AS `Data de inicio`,
e.SALARY AS `Salario`
FROM hr.job_history AS J 
INNER JOIN 
hr.employees AS e ON J.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(J.START_DATE) BETWEEN 01 AND 03;
ORDER BY `Nome de contato`, `Data de inicio`;
