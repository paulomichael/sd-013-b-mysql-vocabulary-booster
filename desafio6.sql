SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
    jb.job_title AS `Cargo`,
    jh.start_date AS `Data de início do cargo`,
    d.department_name AS Departamento
FROM
    hr.job_history AS jh
        JOIN
    hr.jobs AS jb ON jh.job_id = jb.job_id
        JOIN
    hr.departments AS d ON jh.department_id = d.department_id
        JOIN
    hr.employees AS e ON jh.employee_id = e.employee_id
ORDER BY `Nome completo` DESC , Cargo;
