USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_total INT;
SELECT COUNT(*)
FROM hr.job_history JH
JOIN hr.employees E ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE E.EMAIL = email
GROUP BY JH.EMPLOYEE_ID INTO jobs_total;
RETURN jobs_total;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
