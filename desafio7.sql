SELECT 
    UCASE(CONCAT(`FIRST_NAME`, ' ', `LAST_NAME`)) AS `Nome Completo`,
    J.START_DATE AS 'Data de início',
    E.SALARY AS 'Salário'
FROM
    hr.employees AS E
        JOIN
    hr.job_history AS J ON E.EMPLOYEE_ID = J.EMPLOYEE_ID
WHERE
    MONTH(J.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome completo` , `Data de início`;
