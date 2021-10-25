SELECT JO.`JOB_TITLE` AS `Cargo`, ROUND(AVG(EM.`SALARY`),2) AS `Média salarial`,
	CASE
      WHEN `Média salarial` > 2000 AND `Média salarial` < 5800 THEN 'Júnior'
	  WHEN `Média salarial` > 5801 AND `Média salarial` < 7500 THEN 'Pleno'
	  WHEN `Média salarial` > 7501 AND `Média salarial` < 10500 THEN 'Sênior'
      WHEN `Média salarial` > 10500 THEN 'CEO'
    ELSE NULL
    END AS `Senioridade`
  FROM hr.employees AS EM
  JOIN hr.jobs AS JO
  ON JO.`JOB_ID` = EM.`JOB_ID`
ORDER BY `Média salarial`, `Cargo`;