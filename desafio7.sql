SELECT 
    UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
    JH.START_DATE,
    E.SALARY AS 'Salário'
FROM
hr.employees AS E
JOIN hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE month(JH.START_DATE) IN (01,02,03)
ORDER BY `Nome completo` ASC;
