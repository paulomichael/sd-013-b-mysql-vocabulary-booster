SELECT JOB_TITLE AS Cargo,
  max_salary - min_salary as 'Diferença entre salários máximo e mínimo'
FROM jobs
ORDER BY 'Diferença entre salários máximo e mínimo', job_title;
