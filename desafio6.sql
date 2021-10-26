SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    j.JOB_TITLE AS 'Cargo',
    jh.START_DATE AS 'Data de início do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.jobs j
        INNER JOIN
    hr.job_history jh ON j.JOB_ID = jh.JOB_ID
        INNER JOIN
    hr.employees e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
        INNER JOIN
    hr.departments d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC , j.JOB_TITLE;
