SELECT 
    CONCAT(EM.FIRST_NAME,' ',EM.LAST_NAME) AS `Nome completo`,
	JO.JOB_TITLE AS `Cargo`,
	HI.START_DATE AS `Data de início do cargo`,
    DE.DEPARTMENT_NAME AS `Departamento`
 FROM hr.job_history AS HI
 JOIN hr.employees AS EM
 ON HI.EMPLOYEE_ID = EM.EMPLOYEE_ID
 JOIN hr.jobs AS JO
 ON HI.JOB_ID = JO.JOB_ID
 JOIN hr.departments AS DE
 ON DE.DEPARTMENT_ID = HI.DEPARTMENT_ID
 ORDER BY `Nome Completo` DESC, CARGO;
 