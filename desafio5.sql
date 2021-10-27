SELECT
    J.job_title AS `Cargo`,
    J.max_salary - J.min_salary AS `Variação Salarial`,
    ROUND(J.min_salary / 12, 2) AS `Média mínima mensal`,
    ROUND(J.max_salary / 12, 2) AS `Média máxima mensal`
FROM employees AS E
INNER JOIN jobs AS J
ON E.job_id = J.job_id
GROUP BY E.job_id
ORDER BY `Variação Salarial`, Cargo;
