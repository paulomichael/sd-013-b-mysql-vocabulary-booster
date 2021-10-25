SELECT 
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
    date_format(J.START_DATE, '%d/%m/%Y') AS `Data de início`,
    date_format(J.END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
    ROUND(DATEDIFF(J.END_DATE, J.START_DATE) / 365 , 2) AS `Anos trabalhados`
FROM
    hr.employees AS E
    JOIN hr.job_history AS J
    ON E.EMPLOYEE_ID = J.EMPLOYEE_ID
    ORDER BY `Nome completo`, `Anos trabalhados`;