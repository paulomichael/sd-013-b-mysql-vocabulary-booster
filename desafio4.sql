SELECT J.JOB_TITLE AS 'Cargo',
ROUND(AVG(E.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN AVG(E.SALARY) >= 2000 AND AVG(E.SALARY) <= 5800 THEN 'Júnior'
        WHEN AVG(E.SALARY) > 5800 AND AVG(E.SALARY) <= 7500 THEN 'Pleno'
        WHEN AVG(E.SALARY) > 7500 AND AVG(E.SALARY) <= 10500 THEN 'Sênior'
        WHEN AVG(E.SALARY) > 10500 THEN 'CEO'
    ELSE 'Não Classificado'
END AS 'Senioridade'
FROM hr.jobs AS J
INNER JOIN hr.employees AS E
ON J.JOB_ID = E.JOB_ID
GROUP BY J.JOB_TITLE
ORDER BY AVG(E.SALARY) ASC, J.JOB_TITLE ASC
;
