SELECT j.job_title AS `Cargo`,
    ROUND((j.max_salary - j.min_salary) * 12, 2) AS `Variação Salarial`,
    ROUND(e.min_salary, 2) AS `Média mínima mensal`,
    ROUND(e.max_salary, 2) AS `Média máxima mensal`
FROM (SELECT job_id,
MIN(salary) AS min_salary,
MAX(salary) AS max_salary FROM hr.employees
GROUP BY job_id) AS e
JOIN hr.jobs AS j
ON j.job_id = e.job_id;
