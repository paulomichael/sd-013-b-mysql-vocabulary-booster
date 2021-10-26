SELECT 
    JOB_TITLE AS `Cargo`,
    MAX(J.MAX_SALARY) - MIN(J.MIN_SALARY) AS `Variação Salarial`,
    ROUND((J.MIN_SALARY) / 12, 2) AS `Média mínima mensal`,
    ROUND((J.MAX_SALARY) / 12, 2) AS `Média máxima mensal`
FROM
    hr.jobs AS J
        JOIN
    hr.employees AS E ON J.JOB_ID = E.JOB_ID
GROUP BY Cargo
ORDER BY `Variação Salarial`, Cargo ASC;
