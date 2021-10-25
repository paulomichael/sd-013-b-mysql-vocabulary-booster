SELECT
jobs.job_title AS `Cargo`,
ROUND(AVG(employee.salary), 2) AS `Média salarial`,
CASE
WHEN ROUND(AVG(employee.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(employee.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(employee.salary), 2) BETWEEN 7501 AND 10500 THEN 'Senior'
ELSE 'CEO'
END AS `Senioridade`
FROM
hr.jobs AS jobs
INNER JOIN hr.employees AS employee ON jobs.job_id = employee.job_id
GROUP BY Cargo
ORDER BY `Média salarial` ASC, Cargo ASC;
