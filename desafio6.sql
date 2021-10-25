SELECT CONCAT(Employ.FIRST_NAME, ' ', Employ.LAST_NAME) AS `Nome completo`, 
Jobs.JOB_TITLE AS `Cargo`,
Hist.START_DATE AS `Data de início do cargo`,
Dep.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS Employ
INNER JOIN 
hr.job_history AS Hist ON Employ.EMPLOYEE_ID = Hist.EMPLOYEE_ID
INNER JOIN 
hr.jobs AS Jobs ON Jobs.JOB_ID = Hist.JOB_ID
INNER JOIN 
hr.departments AS Dep ON Dep.DEPARTMENT_ID = Hist.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
