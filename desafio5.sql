SELECT JOB_TITLE AS `Cargo`, MAX_SALARY - MIN_SALARY AS `Variação Salarial`,
ROUND(AVG (MIN_SALARY / 12),2) AS `Média mínima mensal`,
ROUND(AVG (MAX_SALARY / 12),2) AS `Média máxima mensal`
FROM hr.jobs AS jobs INNER JOIN hr.employees AS emp ON emp.JOB_ID = jobs.JOB_ID 
GROUP BY jobs.JOB_ID ORDER BY (MAX_SALARY - MIN_SALARY), `Cargo`;
