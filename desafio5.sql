SELECT
JOB_TITLE as "Cargo",
12 * (MAX_SALARY - MIN_SALARY) as "Variação Salarial",
MIN_SALARY as "Média mínima mensal",
MAX_SALARY as "Média máxima mensal"
FROM hr.jobs
ORDER BY (MAX_SALARY - MIN_SALARY), JOB_TITLE ASC;
