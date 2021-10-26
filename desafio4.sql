SELECT 
    JOBS.job_title AS `Cargo`,
    ROUND(AVG(EMPLOYEES.salary), 2) AS 'Média salarial',
    CASE
        WHEN AVG(EMPLOYEES.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(EMPLOYEES.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(EMPLOYEES.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(EMPLOYEES.salary) > 10500 THEN 'CEO'
    END AS Senioridade
FROM
    hr.jobs AS JOBS
        INNER JOIN
    hr.employees AS EMPLOYEES ON JOBS.JOB_ID = EMPLOYEES.JOB_ID
GROUP BY Cargo
ORDER BY 'Média salarial' , Cargo;
