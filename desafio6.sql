SELECT 
CONCAT(T2.FIRST_NAME, ' ', T2.LAST_NAME) AS `Nome completo`,
T3.JOB_TITLE AS Cargo,
T1.START_DATE AS `Data de início do cargo`,
T4.DEPARTMENT_NAME AS Departamento
FROM
hr.job_history AS T1
JOIN hr.employees AS T2 ON T2.EMPLOYEE_ID = T1.EMPLOYEE_ID
JOIN hr.jobs AS T3 ON T3.JOB_ID = T1.JOB_ID
JOIN hr.departments AS T4 ON T4.DEPARTMENT_ID = T1.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo ASC;
