SELECT 
    j.JOB_TITLE AS `Cargo`,
    AVG(e.SALARY) AS Média salarial,
    CASE
        WHEN AVG(e.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(e.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(e.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(e.SALARY) > 10500 THEN 'CEO'
    END AS Nível
FROM
    hr.jobs AS j
        INNER JOIN
    hr.employees AS e ON j.JOB_ID = e.JOB_ID
GROUP BY e.JOB_ID
ORDER BY Média salarial , Cargo;
