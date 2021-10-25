SELECT
    j.JOB_TITLE AS `Cargo`,
    ROUND(AVG(SALARY), 2) AS `Média salarial`,
    CASE
        WHEN AVG(SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS `Senioridade`
FROM hr.employees AS e
JOIN hr.jobs AS j ON j.JOB_ID = e.JOB_ID
GROUP BY JOB_TITLE
ORDER BY `Média salarial`, j.JOB_TITLE;
