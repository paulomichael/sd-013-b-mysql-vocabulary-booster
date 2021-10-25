SELECT 
    jobs_table.JOB_TITLE AS `Cargo`,
    ROUND(AVG(employees_table.SALARY), 2) AS `Média Salarial`,
    CASE
        WHEN AVG(employees_table.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(employees_table.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(employees_table.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(employees_table.SALARY) > 10500 THEN 'CEO'
    END AS Senioridade
FROM
    hr.employees AS employees_table
        INNER JOIN
    hr.jobs AS jobs_table ON employees_table.JOB_ID = jobs_table.JOB_ID
GROUP BY jobs_table.JOB_TITLE
ORDER BY AVG(employees_table.SALARY) , Cargo;
