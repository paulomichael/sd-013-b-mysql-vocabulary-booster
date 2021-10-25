SELECT job.JOB_TITLE AS `Cargo`,
ROUND(AVG(employees.SALARY), 2) AS `Média salarial`,
CASE 
WHEN AVG(employees.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(employees.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(employees.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN AVG(employees.SALARY) > 10500 THEN 'CEO'
END AS `Senioridade`
FROM hr.employees AS employees
INNER JOIN hr.jobs AS job ON employees.JOB_ID = job.JOB_ID
GROUP BY job.JOB_TITLE
ORDER BY AVG(employees.SALARY), `Cargo`;
