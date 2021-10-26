SELECT JOB_TITLE AS Cargo,
  (MAX_SALARY - MIN_SALARY) AS Variação_Salarial,
  ROUND(MIN_SALARY / 12, 2) AS Média_mínima_mensal,
  ROUND(MAX_SALARY / 12, 2) AS Média_máxima_mensal
FROM hr.jobs ORDER BY Variação_Salarial ASC, Cargo;
