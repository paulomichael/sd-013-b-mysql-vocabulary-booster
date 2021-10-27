USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE jobs_total INT;
    SELECT COUNT(*) FROM job_history AS jh
INNER JOIN employees AS em
ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE em.email = email INTO jobs_total;
    RETURN jobs_total;
END $$
