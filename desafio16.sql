USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailFuncionario VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE job_count INT;
    SELECT COUNT(job_history.employee_id)
    FROM hr.job_history AS job_history
    JOIN hr.employees AS emp ON job_history.employee_id = emp.employee_id
    WHERE emp.email = emailFuncionario INTO job_count;
    RETURN job_count;
END $$

DELIMITER ;
