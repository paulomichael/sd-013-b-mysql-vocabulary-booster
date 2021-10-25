USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT 
    COUNT(jbh.JOB_ID) AS `Média salarial`
FROM
    hr.job_history AS jbh
        INNER JOIN
    hr.employees AS emp ON jbh.EMPLOYEE_ID = emp.EMPLOYEE_ID
GROUP BY emp.EMAIL
HAVING emp.EMAIL = email;
END $$

DELIMITER ;

CALL buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
