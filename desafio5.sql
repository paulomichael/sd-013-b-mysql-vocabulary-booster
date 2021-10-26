SELECT hj.JOB_TITLE AS 'Cargo', hj.MAX_SALARY - hj.MIN_SALARY AS 'Variação Salarial',
ROUND(hj.MIN_SALARY / 12, 2) AS `Média mínima mensal`,
ROUND(hj.MAX_SALARY / 12, 2) AS `Média máxima mensal`
FROM hr.jobs AS hj
ORDER BY 'Variação Salarial' ASC, JOB_TITLE ASC;
