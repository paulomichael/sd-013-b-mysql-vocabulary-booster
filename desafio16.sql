USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtdJobs INT;
SELECT 
    COUNT(JH.JOB_ID)
FROM
    hr.employees AS E
        JOIN
    hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE
    E.EMAIL = email INTO qtdJobs;
RETURN qtdJobs;
END$$
DELIMITER ;
