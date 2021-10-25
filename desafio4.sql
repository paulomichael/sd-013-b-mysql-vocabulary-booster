use hr;

SELECT 
    jbs.JOB_TITLE AS 'Cargo',
    ROUND(AVG(empls.SALARY), 2) AS 'Média Salarial',
    CASE
        WHEN ROUND(AVG(empls.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(empls.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(empls.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(empls.SALARY), 2) >= 10501 THEN 'CEO'
    END AS 'Senioridade'
FROM
    jobs jbs
        INNER JOIN
    employees empls
ON
    jbs.JOB_ID = empls.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média Salarial` , `Cargo`;
