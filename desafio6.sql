SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    j.JOB_TITLE AS 'Cargo',
    jh.START_DATE AS 'Data de início do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM employees e
    INNER JOIN job_history jh
    INNER JOIN jobs j
    INNER JOIN departments d ON j.JOB_ID = jh.JOB_ID
    AND d.DEPARTMENT_ID = jh.DEPARTMENT_ID
    AND jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo` DESC,
    `Cargo`;
