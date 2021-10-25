SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    j.JOB_TITLE AS `Cargo`,
    jh.START_DATE AS 'Data de início do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS e
        JOIN
    hr.jobs AS j ON j.JOB_ID = e.JOB_ID
        JOIN
    hr.departments AS d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
        JOIN
    hr.job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo` DESC , Cargo;
