SELECT j.job_title AS `Cargo`,
    ROUND(e.media, 2) AS `Média salarial`,
    CASE WHEN e.media BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN e.media BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN e.media BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN e.media > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM (SELECT job_id, AVG(salary) AS `media`
FROM hr.employees
GROUP BY job_id) as e
INNER JOIN hr.jobs AS j
ON j.job_id = e.job_id
ORDER BY e.media, j.job_title;
