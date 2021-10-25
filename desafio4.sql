SELECT 
    JO.JOB_TITLE AS `Cargo`, 
    ROUND(AVG(EM.SALARY), 2) AS `Média salarial`,
    CASE
		WHEN EM.SALARY BETWEEN  2000 AND 5800 THEN 'Júnior'
		WHEN EM.SALARY BETWEEN  5801 AND 7500 THEN 'Pleno'
		WHEN EM.SALARY BETWEEN  7501 AND 10500 THEN 'Sênior'
		WHEN EM.SALARY > 10500 THEN 'CEO'
	END AS `Senioridade`
FROM
    hr.employees AS EM
        JOIN
    hr.jobs AS JO ON EM.JOB_ID = JO.JOB_ID
GROUP BY JO.JOB_TITLE;
