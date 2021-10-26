DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
    SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
	FROM hr.jobs AS j
        JOIN
		hr.employees AS e ON j.JOB_ID = e.JOB_ID
        AND j.JOB_TITLE = cargo
	GROUP BY e.JOB_ID;
END $$

DELIMITER ;
