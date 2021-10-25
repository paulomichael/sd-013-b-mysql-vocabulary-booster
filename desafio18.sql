SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    date_format(START_DATE, '%d/%m/%Y') AS `Data de início`,
    date_format(END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
    ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS `Anos trabalhados`
FROM job_history jh
    INNER JOIN employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`,
    `Anos trabalhados`;
