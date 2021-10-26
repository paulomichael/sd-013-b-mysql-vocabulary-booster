SELECT JOB_TITLE AS Cargo,
  max_salary - min_salary as 'Diferença entre salários máximo e mínimo'
FROM jobs
ORDER BY max_salary - min_salary, job_title;
