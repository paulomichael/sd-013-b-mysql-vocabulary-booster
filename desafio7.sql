SELECT 
    CONCAT(UCASE(em.FIRST_NAME),
            ' ',
            UCASE(em.LAST_NAME)) AS 'Nome completo',
    jh.START_DATE AS 'Data de início',
    em.SALARY AS 'Salário'
FROM
    hr.employees AS em
        INNER JOIN
    hr.job_history AS jh ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    MONTH(jh.START_DATE) = 1
        OR MONTH(jh.START_DATE) = 2
        OR MONTH(jh.START_DATE) = 3
ORDER BY `Nome completo` , `Data de início`;
