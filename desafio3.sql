USE hr;

SELECT JOB_TITLE AS 'Cargo',
MAX_SALARY - MIN_SALARY AS 'Diferença entre salários máximo e mínimo'
FROM jobs
ORDER BY MIN_SALARY - MAX_SALARY, JOB_TITLE;
