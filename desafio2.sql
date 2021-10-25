SELECT 
    j.job_title AS 'Cargo',
    CASE
		WHEN MAX(e.salary) BETWEEN 5000 AND 10000 THEN 'Baixo'
        WHEN MAX(e.salary) BETWEEN 10001 AND 20000 THEN 'Médio'
        WHEN MAX(e.salary) BETWEEN 20001 AND 30000 THEN 'Alto'
        WHEN MAX(e.salary) > 30000 THEN 'Altíssimo'
	END AS 'Nível'
FROM
    hr.jobs AS j
        INNER JOIN
    hr.employees AS e ON e.job_id = j.job_id
GROUP BY j.job_title
ORDER BY j.job_title;
