SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS `Nome Completo`,
    j.job_title AS `Cargo`,
    jh.start_date AS `Data de início do cargo`,
    d.department_name AS `Departamento`
FROM
    hr.job_history as jh
    join
    hr.employees as e on jh.employee_ID = e.employee_ID
    join
    hr.jobs as j on jh.job_ID = j.job_ID
    join
    hr.departments as d on jh.department_ID = d.department_ID
ORDER BY `Nome Completo` DESC , `Cargo`;
