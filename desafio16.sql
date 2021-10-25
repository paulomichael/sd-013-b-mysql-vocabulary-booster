USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(*)
        FROM hr.job_history jh
        INNER JOIN hr.employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        WHERE e.EMAIL = email
        INTO total;
    RETURN total;
END $$ 

DELIMITER ;
