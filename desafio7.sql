SELECT 
    UPPER(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome completo`,
    JH.START_DATE AS `Data de início`,
    E.SALARY AS `Salário`
FROM
    hr.employees as E
    JOIN hr.job_history AS JH
    ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
    WHERE MONTH(JH.START_DATE) BETWEEN 1 and 3     
    ORDER BY `Nome completo`, `Data de início`;
