SELECT
CONCAT(E.first_name, ' ', E.last_name) AS 'Nome completo',
J.JOB_TITLE AS 'Cargo',
JH.START_DATE AS 'Data de início do cargo',
DP.DEPARTMENT_NAME AS 'Departamento'
FROM
hr.employees E
INNER JOIN
hr.job_history JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN
hr.jobs J ON J.JOB_ID = JH.JOB_ID
INNER JOIN
hr.departments DP ON DP.DEPARTMENT_ID = JH.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, Cargo ASC;
