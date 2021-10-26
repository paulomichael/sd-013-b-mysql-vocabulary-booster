SELECT
jo.JOB_TITLE,
round(AVG(em.SALARY), 2) as "Média salarial",
CASE
WHEN AVG(em.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(em.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(em.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN AVG(em.SALARY) > 10500 THEN 'CEO'
ELSE null
END as "Senioridade"
FROM hr.employees as em
INNER JOIN hr.jobs as jo
ON em.JOB_ID = jo.JOB_ID
GROUP BY em.JOB_ID
ORDER BY AVG(SALARY), jo.JOB_TITLE ASC;
