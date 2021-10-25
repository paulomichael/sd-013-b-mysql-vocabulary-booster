SELECT 
    UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome completo',
    job_hist.START_DATE AS 'Data de início',
    emp.SALARY AS 'Salário'
FROM
    hr.job_history AS job_hist
        INNER JOIN
    hr.employees AS emp ON emp.EMPLOYEE_ID = job_hist.EMPLOYEE_ID
WHERE
    MONTH(job_hist.START_DATE) = '01'
        OR MONTH(job_hist.START_DATE) = '02'
        OR MONTH(job_hist.START_DATE) = '03'
ORDER BY `Nome completo` ASC , `Data de início` ASC;
