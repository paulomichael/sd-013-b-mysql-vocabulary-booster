SELECT 
    JOB_TITLE AS 'Cargo',
    ROUND(AVG(SALARY), 2) AS 'Média salarial',
    CASE
        WHEN
            AVG(SALARY) > 2000
                AND AVG(SALARY) < 5800
        THEN
            'Júnior'
        WHEN
            AVG(SALARY) > 5801
                AND AVG(SALARY) < 7500
        THEN
            'Pleno'
        WHEN
            AVG(SALARY) > 7501
                AND AVG(SALARY) < 10500
        THEN
            'Sênior'
        WHEN AVG(SALARY) > 10500 THEN 'CEO'
    END AS Senioridade
FROM
    hr.jobs AS j
        INNER JOIN
    hr.employees AS e ON j.JOB_ID = e.JOB_ID
GROUP BY JOB_TITLE
ORDER BY AVG(SALARY) ASC , JOB_TITLE;
