SELECT 
    jobs.JOB_TITLE AS Cargo,
    ROUND(AVG(SALARY), 2) AS `Média salarial`,
    CASE
        WHEN
            ROUND(AVG(SALARY), 2) >= 2000
                AND ROUND(AVG(SALARY), 2) <= 5800
        THEN
            'Júnior'
        WHEN
            ROUND(AVG(SALARY), 2) >= 5801
                AND ROUND(AVG(SALARY), 2) <= 7500
        THEN
            'Pleno'
        WHEN
            ROUND(AVG(SALARY), 2) >= 7501
                AND ROUND(AVG(SALARY), 2) <= 10500
        THEN
            'Sênior'
        WHEN ROUND(AVG(SALARY), 2) > 10500 THEN 'CEO'
    END AS Senioridade
FROM
    hr.employees AS emp
        INNER JOIN
    hr.jobs AS jobs ON emp.JOB_ID = jobs.JOB_ID
GROUP BY Cargo;
