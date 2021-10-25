SELECT
		J.JOB_TITLE Cargo,
		(J.MAX_SALARY - J.MIN_SALARY) `Variação Salarial`,
		ROUND(J.MIN_SALARY / 12, 2) `Média mínima mensal`,
		ROUND(J.MAX_SALARY / 12, 2) `Média máxima mensal`
FROM jobs J
INNER JOIN employees E
ON J.JOB_ID = E.JOB_ID
GROUP BY J.JOB_ID
ORDER BY `Variação Salarial`, Cargo;

