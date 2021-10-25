SELECT
J.JOB_TITLE Cargo,
CASE
WHEN (MAX(E.SALARY) >= 1000) AND (MAX(E.SALARY) < 10000) THEN 'Baixo'
WHEN (MAX(E.SALARY) >= 10000) AND (MAX(E.SALARY) < 17000) THEN 'Médio'
WHEN (MAX(E.SALARY) >= 17000) AND (MAX(E.SALARY) < 24000) THEN 'Alto'
WHEN (MAX(E.SALARY) >= 24000) THEN 'Altíssimo'
ELSE ''
END AS Nível
FROM employees E
INNER JOIN jobs J
ON E.JOB_ID = J.JOB_ID
GROUP BY E.JOB_ID
ORDER BY Cargo;
