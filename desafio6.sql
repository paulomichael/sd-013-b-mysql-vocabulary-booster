SELECT
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) 'Nome completo',
J.JOB_TITLE Cargo,
JH.START_DATE 'Data de início do cargo',
D.DEPARTMENT_NAME Departamento
FROM hr.job_history JH
JOIN hr.employees E ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
JOIN hr.jobs J ON J.JOB_ID = JH.JOB_ID
JOIN hr.departments D ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
