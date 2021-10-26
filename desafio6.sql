SELECT 
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
    J.JOB_TITLE AS 'Cargo',
    JH.START_DATE AS 'Data de início do cargo',
    D.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.jobs AS J
        JOIN
hr.job_history AS JH ON J.JOB_ID = JH.JOB_ID
JOIN
hr.employees AS E ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
JOIN
hr.departments AS D ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo` ASC;
