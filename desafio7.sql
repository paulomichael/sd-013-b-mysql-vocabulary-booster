SELECT 
    UCASE(CONCAT(e.FIRST_NAME, '', e.LAST_NAME)) AS 'Nome Completo',
    jh.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome Completo` , `Data de início`;
