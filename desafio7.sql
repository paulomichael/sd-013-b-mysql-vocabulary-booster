SELECT 
    CONCAT(UCASE(FIRST_NAME), ' ', UCASE(LAST_NAME)) AS 'Nome completo',
    HIRE_DATE AS 'Data de início',
    SALARY AS 'Salário'
FROM
    hr.employees e
ORDER BY CONCAT(FIRST_NAME, ' ',LAST_NAME) DESC , HIRE_DATE;
