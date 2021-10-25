USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE emprego_total INT;
SELECT COUNT(*)
FROM hr.job_history AS j
INNER JOIN hr.employees AS e
ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email INTO emprego_total;
RETURN emprego_total;
END $$

DELIMITER ;

SELECT BUSCAR_QUANTIDADE_DE_EMPREGOS_POR_FUNCIONARIO('NKOCHHAR');
