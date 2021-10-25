SELECT J.JOB_TITLE AS 'Cargo',
ROUND(AVG(E.SALARY), 2) AS 'Média salarial'
FROM hr.jobs AS J
INNER JOIN hr.employees AS E
ON J.JOB_ID = E.JOB_ID
GROUP BY J.JOB_TITLE
;
