SELECT 
    UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome completo',
    job_hist.START_DATE AS 'Data de início do cargo',
    emp.SALARY AS 'Salário'
    FROM hr.employees AS emp
    INNER JOIN hr.job_history AS job_hist ON job_hist.JOB_ID = emp.JOB_ID
    ORDER BY `Nome completo` ASC, job_hist.START_DATE ASC;