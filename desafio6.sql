use hr;

SELECT 
CONCAT(empls.FIRST_NAME, ' ', empls.LAST_NAME) AS 'Nome Completo',
jbs.JOB_TITLE AS 'Cargo',
empls.HIRE_DATE AS 'Data de início do cargo',
dpt.DEPARTMENT_NAME AS 'Departamento'
FROM employees empls
INNER JOIN jobs jbs
ON empls.JOB_ID = jbs.JOB_ID
INNER JOIN departments dpt
ON empls.DEPARTMENT_ID = dpt.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Cargo` ASC;
