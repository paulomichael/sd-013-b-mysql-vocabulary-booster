SELECT 
    j.JOB_TITLE AS `Cargo`,
    ROUND(AVG(e.SALARY), 2) AS Média salarial,
    CASE
        WHEN
            AVG(e.SALARY) >= 2000
                AND AVG(e.SALARY) <= 5800
        THEN
            'Júnior'
        WHEN
            AVG(e.SALARY) >= 5801
                AND AVG(e.SALARY) <= 7500
        THEN
            'Pleno'
        WHEN
            AVG(e.SALARY) >= 7501
                AND AVG(e.SALARY) <= 10500
        THEN
            'Sênior'
        WHEN AVG(e.SALARY) > 10500 THEN 'CEO'
    END AS Senioridade
FROM
    hr.jobs AS j
        JOIN
    hr.employees AS e ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY Média salarial , Cargo;
