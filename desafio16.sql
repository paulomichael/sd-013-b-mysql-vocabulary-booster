DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(300))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE qt_job INT;
    SELECT COUNT(jh.EMPLOYEE_ID)
    FROM hr.employees AS e 
    JOIN hr.job_history AS jh 
    ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID AND e.EMAIL = email 
    group by jh.EMPLOYEE_ID
    INTO qt_job;
    RETURN qt_job;
END $$

DELIMITER ;
