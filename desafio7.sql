SELECT 
    UPPER(CONCAT(E.first_name, ' ', E.last_name)) AS `Nome completo`,
    JH.start_date AS `Data de início`,
    E.salary AS `Salário`
FROM
    job_history AS JH
        INNER JOIN
    employees AS E ON JH.employee_id = E.employee_id
        INNER JOIN
    jobs AS J ON JH.job_id = J.job_id
        INNER JOIN
    departments AS D ON JH.department_id = D.department_id
WHERE
    MONTH(JH.start_date) IN (1 , 2, 3)
ORDER BY E.first_name , E.last_name , JH.start_date;
