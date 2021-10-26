USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_total INT;
SELECT COUNT(jh.JOB_ID)
FROM job_history AS jh
INNER JOIN employees AS e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email INTO jobs_total;
RETURN jobs_total;
END $$

DELIMITER ;
