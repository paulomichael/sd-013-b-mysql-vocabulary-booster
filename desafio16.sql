USE hr;
DELIMITER $$;
CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario (IN email VARCHAR(50))
BEGIN
SELECT COUNT(*) FROM employees as em
INNER JOIN job_history as jh ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE em.EMAIL = email;
END $$;
DELIMITER ;
