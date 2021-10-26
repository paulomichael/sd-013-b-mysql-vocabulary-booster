SELECT
CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) as "Nome completo",
jo.JOB_TITLE as "Cargo",
em.HIRE_DATE as "Data de início do cargo",
de.DEPARTMENT_NAME "Departamento"
FROM hr.employees as em
INNER JOIN hr.job_history as jh
ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
INNER JOIN hr.departments as de
ON de.DEPARTMENT_ID = em.DEPARTMENT_ID
INNER JOIN hr.jobs as jo
ON jo.JOB_ID = em.JOB_ID
ORDER BY CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) DESC, jo.JOB_TITLE ASC;
