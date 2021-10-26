DELIMITER $$;
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(*) as total_empregos FROM hr.employees as em
INNER JOIN job_history as jh ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE em.EMAIL = email
INTO result;
RETURN result;
END $$;
DELIMITER ;
