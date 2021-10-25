SELECT
    CONCAT(em.first_name, ' ', em.last_name) AS `Nome Completo`,
    jo.job_title AS `Cargo`,
    joh.START_DATE AS `Data de início do cargo`,
    de.DEPARTMENT_NAME AS `Departamento`
FROM
    hr.employees AS em 
JOIN hr.job_history AS joh ON em.employee_id = joh.employee_id
JOIN hr.jobs AS jo ON em.job_id = jo.job_id
JOIN hr.departments AS de ON joh.DEPARTMENT_ID = de.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Data de início do cargo`;
