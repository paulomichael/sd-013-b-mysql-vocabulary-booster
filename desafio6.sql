SELECT 
CONCAT(empls.FIRST_NAME, ' ', empls.LAST_NAME) AS `Nome completo`,
jbs.JOB_TITLE AS `Cargo`,
jh.START_DATE AS `Data de início do cargo`,
dp.DEPARTMENT_NAME AS `Departamento`
FROM 
    hr.employees empls
        INNER JOIN
    hr.job_history jh  ON jh.EMPLOYEE_ID = empls.EMPLOYEE_ID
        INNER JOIN
    hr.jobs jbs ON jbs.JOB_ID = jh.JOB_ID
        INNER JOIN
    hr.departments dp ON jh.DEPARTMENT_ID = dp.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Cargo`;
