SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
    jobs.JOB_TITLE AS 'Cargo',
    job_hist.START_DATE AS 'Data de início do cargo',
    depart.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS emp
        INNER JOIN
    hr.jobs AS jobs ON job_hist.JOB_ID = jobs.JOB_ID
        INNER JOIN
    hr.job_history AS job_hist ON emp.EMPLOYEE_ID = job_hist.EMPLOYEE_ID
        INNER JOIN
    hr.departments AS depart ON job_hist.DEPARTMENT_ID = depart.DEPARTMENT_ID
    ORDER BY `Nome completo` DESC, Cargo ASC;
