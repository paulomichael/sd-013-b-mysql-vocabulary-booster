use hr;

SELECT 
CONCAT(empls.FIRST_NAME, ' ', empls.LAST_NAME) AS 'Nome Completo',
jbs.JOB_TITLE AS 'Cargo',
jh.START_DATE AS 'Data de início do cargo',
dpt.DEPARTMENT_NAME AS 'Departamento'
FROM job_history jh
INNER JOIN jobs jbs
ON jh.JOB_ID = jbs.JOB_ID
INNER JOIN departments dpt
ON jh.DEPARTMENT_ID = dpt.DEPARTMENT_ID
INNER JOIN employees empls
ON jh.EMPLOYEE_ID = empls.EMPLOYEE_ID
ORDER BY `Nome Completo` DESC, `Cargo` ASC;
