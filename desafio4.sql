SELECT j.JOB_TITLE AS `Cargo`, ROUND(AVG(e.SALARY ), 2) AS `Média salarial`,
	CASE
		  WHEN `Média salarial` BETWEEN 2000 AND 5800 THEN 'Júnior'
      WHEN `Média salarial` BETWEEN 5801 AND 7500 THEN 'Pleno'
      WHEN `Média salarial` BETWEEN 75011 AND 10500 THEN 'Sênior'
      WHEN `Média salarial` > 10500 THEN 'CEO'
        -- ELSE 'Júnior'
	END AS `Senioridade`
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON j.JOB_ID = e.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial`, `Cargo` ASC;
