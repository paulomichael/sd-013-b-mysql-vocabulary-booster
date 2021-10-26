USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_in varchar(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE job_total INT;
SELECT 
    COUNT(*) AS total_empregos
FROM
    hr.job_history
WHERE
    EMPLOYEE_ID = (SELECT 
            EMPLOYEE_ID
        FROM
            hr.employees
        WHERE
            EMAIL = email_in) INTO job_total;
    RETURN job_total;
END $$

DELIMITER ;
