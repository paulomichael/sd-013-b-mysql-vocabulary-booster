SELECT 
UPPER(CONCAT(empls.FIRST_NAME, ' ', empls.LAST_NAME)) AS `Nome completo`,
jh.START_DATE AS `Data de início`,
empls.SALARY AS `Salário`
FROM 
    hr.employees empls
        INNER JOIN
    hr.job_history jh  ON jh.EMPLOYEE_ID = empls.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (1, 2, 3) 
ORDER BY `Nome Completo`, `Data de início`;

-- Ref:UPPER(CONCAT()) https://bugs.mysql.com/bug.php?id=7739
