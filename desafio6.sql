SELECT
CONCAT(EM.`FIRST_NAME`, ' ', EM.`LAST_NAME`) AS `Nome completo`,
JO.`JOB_TITLE` AS `Cargo`,
JH.`START_DATE` AS `Data de início do cargo`,
DE.`DEPARTMENT_NAME` AS `Departamento`
FROM hr.job_history AS JH
JOIN hr.employees AS EM
JOIN hr.jobs AS JO 
JOIN hr.departments AS DE
 ON  EM.`EMPLOYEE_ID` = JH.`EMPLOYEE_ID` 
 AND  DE.`DEPARTMENT_ID` = JH.`DEPARTMENT_ID`
 AND  JH.`JOB_ID` = JO.`JOB_ID`
ORDER BY `Nome completo` DESC, `Cargo`;
