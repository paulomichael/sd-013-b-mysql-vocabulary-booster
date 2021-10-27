SELECT 
    CONCAT(E.first_name, ' ', E.last_name) AS `Nome completo`,
    J.job_title AS `Cargo`,
    JH.start_date AS `Data de início do cargo`,
    D.department_name AS `Departamento`
FROM
    job_history AS JH
        INNER JOIN
    employees AS E ON JH.employee_id = E.employee_id
        INNER JOIN
    jobs AS J ON JH.job_id = J.job_id
        INNER JOIN
    departments AS D ON JH.department_id = D.department_id
ORDER BY E.first_name DESC , E.last_name DESC , J.job_title;
