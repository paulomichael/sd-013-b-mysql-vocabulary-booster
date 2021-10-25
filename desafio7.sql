SELECT 
    CONCAT(UCASE(FIRST_NAME), ' ', UCASE(LAST_NAME)) AS 'Nome completo',
    HIRE_DATE AS 'Data de início',
    SALARY AS 'Salário'
FROM
    hr.employees
WHERE
    MONTH(HIRE_DATE) BETWEEN 1 AND 3
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) DESC , HIRE_DATE

--marked to commit again due to a github glitch
