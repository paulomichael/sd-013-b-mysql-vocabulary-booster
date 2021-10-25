SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
    j.JOB_TITLE AS `Cargo`,
    j_h.START_DATE AS `Data de início do cargo`,
    d.DEPARTMENT_NAME AS `Departamento`
FROM
    hr.employees AS e
INNER JOIN hr.jobs AS j ON j.JOB_ID = e.JOB_ID
INNER JOIN hr.job_history AS j_h ON e.EMPLOYEE_ID = j_h.EMPLOYEE_ID
INNER JOIN hr.departments AS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
