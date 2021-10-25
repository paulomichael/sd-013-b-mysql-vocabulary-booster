SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    j.JOB_TITLE AS 'Cargo',
    e.HIRE_DATE AS 'Data de início do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS e
        JOIN
    hr.jobs AS j
        JOIN
    hr.departments AS d ON e.JOB_ID = j.JOB_ID
        AND e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo`;
