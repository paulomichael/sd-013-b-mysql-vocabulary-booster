SELECT 
jbs.JOB_TITLE AS 'Cargo',
ROUND(AVG(empls.SALARY), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(empls.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(empls.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(empls.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN ROUND(AVG(empls.SALARY), 2) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM
hr.employees as empls
INNER JOIN hr.jobs jbs
ON empls.JOB_ID = jbs.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média Salarial` ASC, `Cargo` ASC;
