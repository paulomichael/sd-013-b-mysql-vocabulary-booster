USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_total INT;
SELECT 
    COUNT(jbh.JOB_ID) AS `Média salarial`
FROM
    hr.job_history AS jbh
        INNER JOIN
    hr.employees AS emp ON jbh.EMPLOYEE_ID = emp.EMPLOYEE_ID
GROUP BY emp.EMAIL
HAVING emp.EMAIL = email INTO jobs_total;
RETURN jobs_total;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
