SELECT 
    jobs_table.JOB_TITLE AS `Cargo`,
    jobs_table.MAX_SALARY - jobs_table.MIN_SALARY AS `Variação Salarial`,
	ROUND(AVG(jobs_table.MIN_SALARY), 2) AS `Média mínima mensal`,
    ROUND(AVG(jobs_table.MAX_SALARY), 2) AS `Média máxima mensal`
FROM
    hr.employees AS employees_table
        INNER JOIN
    hr.jobs AS jobs_table ON employees_table.JOB_ID = jobs_table.JOB_ID
GROUP BY jobs_table.JOB_TITLE
ORDER BY `Variação Salarial` ASC, `Cargo`;
