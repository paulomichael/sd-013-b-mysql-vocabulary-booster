SELECT 
    UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome completo',
    job_hist.START_DATE AS 'Data de início',
    emp.SALARY AS 'Salário'
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS job_hist ON job_hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE
    MONTH(job_hist.START_DATE) = '01'
        OR MONTH(job_hist.START_DATE) = '02'
        OR MONTH(job_hist.START_DATE) = '03'
ORDER BY Nome completo ASC , job_hist.START_DATE ASC;
