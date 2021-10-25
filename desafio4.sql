-- SELECT * FROM hr.employees;
-- SELECT * FROM hr.jobs;

SELECT 
    j.JOB_TITLE AS 'Cargo',
    ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN AVG(e.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(e.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(e.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON e.JOB_ID = j.JOB_ID
GROUP BY Cargo
ORDER BY ROUND(AVG(SALARY), 2) ASC , Cargo;
