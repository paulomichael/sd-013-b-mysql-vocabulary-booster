SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS `Nome Completo`,
    j.job_title AS `Cargo`,
    jh.start_date AS `Data de início do cargo`,
    d.department_name AS Departamento
FROM
    hr.employees AS e
        JOIN
    hr.job_history AS jh ON e.employee_id = jh.employee_id
        JOIN
    hr.jobs AS j ON j.job_id = jh.job_id
        JOIN
    hr.departments AS d ON jh.department_id = d.department_id
ORDER BY `Nome Completo` DESC , `Cargo`;