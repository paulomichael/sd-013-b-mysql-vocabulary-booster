SELECT 
CONCAT(UCASE(Employ.FIRST_NAME), ' ', UCASE(Employ.LAST_NAME)) AS `Nome completo`,
Hist.START_DATE AS `Data de início`,
Employ.SALARY AS `Salário`
FROM hr.employees AS Employ
INNER JOIN 
hr.job_history AS Hist ON Employ.EMPLOYEE_ID = Hist.EMPLOYEE_ID
WHERE
MONTH(Hist.START_DATE) = '01'
OR MONTH(Hist.START_DATE) = '02'
OR MONTH(Hist.START_DATE) = '03'
ORDER BY `Nome completo`, `Data de início`;
