SELECT 
    UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome Completo`,
    J.START_DATE AS 'Data de início',
    E.SALARY AS 'Salário'
FROM
    hr.employees as E
        INNER JOIN
    hr.job_history AS J ON J.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE
    MONTH(J.START_DATE) IN (01, 02, 03)
ORDER BY `Nome completo` ASC, `Data de início` ASC;

