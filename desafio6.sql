


SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) 
FROM hr.jobs AS 'Nome completo'
INNER JOIN departments.JOB_TITLE AS 'Cargo' ON JOB_ID = JOB_ID FROM hr.jobs
INNER JOIN job_history.START_DATE AS 'Data de início do cargo' ON EMPLOYEE_ID = EMPLOYEE_ID FROM hr.employees
INNER JOIN departments.DEPARTMENT_NAME AS 'Departamento' ON DEPARTMENT_ID = DEPARTMENT_ID FROM hr.employees
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) DESC, JOB_TITLE;
