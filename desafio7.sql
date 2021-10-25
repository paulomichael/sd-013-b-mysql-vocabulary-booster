SELECT 
    CONCAT(UCASE(e.FIRST_NAME),
            ' ',
            UCASE(e.LAST_NAME)) AS 'Nome completo',
    j.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS j ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE
    MONTH(j.START_DATE) IN (1 , 2, 3)
ORDER BY CONCAT(UCASE(e.FIRST_NAME),
        ' ',
        UCASE(e.LAST_NAME)) ASC , j.START_DATE ASC;
