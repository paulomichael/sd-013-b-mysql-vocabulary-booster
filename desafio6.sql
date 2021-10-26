SELECT 
	CONCAT(e.FIRST_NAME, ' ',  e.LAST_NAME) AS `Nome completo`,
	j.JOB_TITLE AS `Cargo`,
	jh.START_DATE AS `Data de início do cargo`,
  	d.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.jobs AS j ON j.JOB_ID = jh.JOB_ID
INNER JOIN hr.departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;


-- select * from hr.employees;
-- select * from hr.jobs;
-- select * from hr.job_history;
-- select * from hr.departments;

    
 