SELECT 
    UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
    h.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS h ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(h.START_DATE) = 1 OR MONTH(h.START_DATE) = 2 OR MONTH(h.START_DATE) = 3
ORDER BY 1, 2;
