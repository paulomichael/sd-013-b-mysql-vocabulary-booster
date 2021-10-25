SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
empregos.JOB_TITLE AS `Cargo`,
HIRE_DATE,
DEPARTMENT_NAME
FROM hr.employees AS employee
INNER JOIN hr.jobs as empregos
ON employee.JOB_ID = empregos.JOB_ID
INNER JOIN hr.departments AS Departamentos
ON employee.DEPARTMENT_ID = Departamentos.DEPARTMENT_ID;
