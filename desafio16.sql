DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT 
COUNT(jh.EMPLOYEE_ID)
FROM
hr.job_history AS jh
JOIN
hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
e.EMAIL = email
GROUP BY e.EMPLOYEE_ID INTO quantity;
RETURN quantity;
END $$

DELIMITER ;
