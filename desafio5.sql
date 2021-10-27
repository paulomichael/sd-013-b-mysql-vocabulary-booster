SELECT
  jo.JOB_TITLE AS 'Cargo',
  (jo.MAX_SALARY - jo.MIN_SALARY) AS 'Variação Salarial',
  MIN(em.SALARY) AS 'Média mínima mensal',
  MAX(em.SALARY) AS 'Média máxima mensal'
FROM hr.jobs AS jo
INNER JOIN hr.employees AS em
ON jo.JOB_ID = em.JOB_ID
GROUP BY jo.JOB_ID
ORDER BY `Variação Salarial`, `Cargo`;
