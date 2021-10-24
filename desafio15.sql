USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN nomeCargo VARCHAR(50))
BEGIN
	SELECT ROUND(AVG(emp.salary), 2) AS 'Média salarial'
    FROM employees AS emp
    WHERE emp.job_id = (SELECT job_id
    FROM jobs AS jobs
    WHERE jobs.job_title = nomeCargo)
    GROUP BY job_id;
END $$

DELIMITER ;