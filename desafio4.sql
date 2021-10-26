SELECT
  jo.JOB_TITLE AS 'Cargo',
  ROUND(AVG(em.SALARY), 2) AS 'Média salarial',
  CASE
    WHEN AVG(em.SALARY) >= 2000 AND AVG(em.SALARY) <= 5800 THEN 'Júnior'
    WHEN AVG(em.SALARY) >= 5801 AND AVG(em.SALARY) <= 7500 THEN 'Pleno'
    WHEN AVG(em.SALARY) >= 7501 AND AVG(em.SALARY) <= 10500 THEN 'Sênior'
    WHEN AVG(em.SALARY) > 10500 THEN 'CEO'
  END AS 'Senioridade'
FROM hr.jobs AS jo
INNER JOIN hr.employees AS em
ON jo.JOB_ID = em.JOB_ID
GROUP BY jo.JOB_ID
ORDER BY AVG(em.SALARY), JOB_TITLE;
