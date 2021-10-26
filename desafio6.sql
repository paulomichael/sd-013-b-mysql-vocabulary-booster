SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    JOB_ID AS 'Cargo',
    HIRE_DATE AS 'Data de início do cargo',
    DEPARTMENT_ID AS 'Departamento'
FROM
    hr.employees
ORDER BY `Nome Completo` DESC , `Cargo` ASC;
