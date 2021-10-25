SELECT 
    j.JOB_TITLE AS `Cargo`,
    ROUND(AVG(e.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN
            ROUND(AVG(e.SALARY), 2) >= 2000
                AND ROUND(AVG(e.salary), 2) <= 5800
        THEN
            'Júnior'
        WHEN
            ROUND(AVG(e.SALARY), 2) >= 5801
                AND ROUND(AVG(e.salary), 2) <= 7500
        THEN
            'Pleno'
        WHEN
            ROUND(AVG(e.SALARY), 2) >= 7501
                AND ROUND(AVG(e.salary), 2) <= 10500
        THEN
            'Pleno'
        ELSE 'CEO'
    END AS `Senioridade`
FROM
    hr.jobs AS j
        JOIN
    hr.employees AS e ON j.JOB_ID = e.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial` , `Cargo`;


