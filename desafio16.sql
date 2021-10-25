DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_count INT;
SELECT COUNT(*) 
FROM job_history 
AS J INNER JOIN employees 
AS E ON E.EMPLOYEE_ID = J.EMPLOYEE_ID 
WHERE E.EMAIL = email
INTO jobs_count;
RETURN jobs_count;
END $$

DELIMITER ;
