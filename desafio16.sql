DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EMAIL VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE total_empregos INT;
	SELECT
    COUNT(t3.JOB_ID)
FROM
    hr.employees AS t1
        INNER JOIN
    hr.jobs AS t2
        INNER JOIN
    hr.job_history AS t3 ON t1.JOB_ID = t2.JOB_ID
        AND t1.EMPLOYEE_ID = t3.EMPLOYEE_ID
        AND t1.EMAIL = EMAIL INTO total_empregos;
    RETURN total_empregos;
END $$

DELIMITER ;
