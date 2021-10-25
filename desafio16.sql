DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(recebe_email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE employeeJobs INT;
SELECT COUNT(jh.EMPLOYEE_ID) AS empregos_totais
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = recebe_email INTO employeeJobs;
RETURN employeeJobs;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
