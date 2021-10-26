SELECT J.JOB_TITLE AS 'Cargo',
MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
ROUND((MIN_SALARY / 12), 2) AS 'Média mínima mensal',
ROUND((MAX_SALARY / 12), 2) AS 'Média máxima mensal'
FROM hr.jobs AS J
ORDER BY `Variação Salarial` ASC, Cargo;
