SELECT 
    job_title AS 'Cargo',
    CASE
        WHEN MAX_SALARY BETWEEN 5000 AND 10000 THEN 'Baixo'
        WHEN MAX_SALARY BETWEEN 10001 AND 20000 THEN 'Médio'
        WHEN MAX_SALARY BETWEEN 20001 AND 30000 THEN 'Alto'
        WHEN MAX_SALARY > 30000 THEN 'Altíssimo'
        ELSE 'Sálario menor que 0'
    END AS Nivel
FROM
    hr.jobs
ORDER BY JOB_TITLE
