SELECT 
		J.JOB_TITLE Cargo,
    J.MAX_SALARY - J.MIN_SALARY `Diferença entre salários máximo e mínimo`
FROM jobs J
INNER JOIN employees E
ON E.JOB_ID = J.JOB_ID
GROUP BY E.JOB_ID
ORDER BY `Diferença entre salários máximo e mínimo`, Cargo;

