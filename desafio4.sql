SELECT J.JOB_TITLE AS 'Cargo',
ROUND(AVG(E.SALARY), 2) AS 'Média salarial',
    CASE
		WHEN E.SALARY BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN E.SALARY BETWEEN 5801 AND 7500 THEN 'PLENO'
        WHEN E.SALARY BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN E.SALARY > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM hr.employees AS E
INNER JOIN hr.jobs AS J ON E.JOB_ID = J.JOB_ID
GROUP BY J.JOB_TITLE
ORDER BY AVG(E.SALARY), 'Cargo';