SELECT JOB_TITLE AS 'Cargo', 
CASE
WHEN MAX_SALARY BETWEEN 5000 and 10000 THEN 'Baixo'
WHEN MAX_SALARY BETWEEN 10001 and 20000 THEN 'Médio'
WHEN MAX_SALARY BETWEEN 20001 and 30000 THEN 'Alto'
WHEN MAX_SALARY >= 30001 THEN 'Altíssimo'
END AS 'Nivel'
FROM jobs
ORDER BY JOB_TITLE;