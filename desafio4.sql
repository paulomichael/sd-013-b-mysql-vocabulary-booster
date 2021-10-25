SELECT
j.job_title AS `Cargo`,
ROUND(AVG(e.salary), 2) AS `Média salarial`,
CASE
WHEN ROUND(AVG(e.salary), 2) >= 2000 AND ROUND(AVG(e.salary), 2) <= 5800 THEN 'Júnior'
WHEN ROUND(AVG(e.salary), 2) > 5800 AND ROUND(AVG(e.salary), 2) <= 7500 THEN 'Pleno'
WHEN ROUND(AVG(e.salary), 2) > 7500 AND ROUND(AVG(e.salary), 2) <= 10500 THEN 'Sênior'
WHEN ROUND(AVG(e.salary), 2) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM
hr.jobs AS j
INNER JOIN
hr.employees AS e ON j.job_id = e.job_id
GROUP BY j.job_title
ORDER BY `Média salarial` ASC, j.job_title ASC;