SELECT 
    CONCAT(E.first_name, ' ', E.last_name) AS 'Nome completo',
    J.JOB_TITLE AS 'Cargo',
    JH.start_date AS 'Data de início do cargo',
    D.department_name AS 'Departamento'
FROM
    hr.jobs AS J
        INNER JOIN
    hr.job_history AS JH ON JH.job_id = j.job_id
        INNER JOIN
    hr.employees AS E ON E.employee_id = JH.employee_id
        INNER JOIN
    hr.departments AS D ON D.department_id = JH.department_id
ORDER BY CONCAT(E.first_name, ' ', E.last_name) DESC , J.JOB_TITLE;
