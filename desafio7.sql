SELECT 
    UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS `Nome completo`,
    j_h.START_DATE AS `Data de início`,
    SALARY AS Salário
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS j_h ON e.EMPLOYEE_ID = j_h.EMPLOYEE_ID
WHERE
    MONTH(j_h.START_DATE) IN (01 , 02, 03)
ORDER BY `Nome completo` ASC, 'Data de início' ASC;
