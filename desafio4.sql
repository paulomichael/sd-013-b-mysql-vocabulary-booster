SELECT j.job_title AS `Cargo`,
  ROUND(AVG(e.salary), 2) AS `Média salarial`,
  CASE
    WHEN AVG(e.salary) < 5801 THEN 'Júnior'
    WHEN AVG(e.salary) < 7501 THEN 'Pleno'
    WHEN AVG(e.salary) < 10501 THEN 'Sênior'
    ELSE 'CEO'
END AS 'Senioridade'
FROM employees as e
INNER JOIN jobs as j on e.job_id = j.job_id
GROUP BY e.job_id
ORDER BY `Média Salarial`, `Cargo`;
