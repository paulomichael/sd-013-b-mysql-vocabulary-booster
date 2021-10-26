DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE JOBS_DONE INT;
SELECT 
COUNT(jh.JOB_ID)
FROM
hr.job_history jh
INNER JOIN
hr.employees empls ON jh.EMPLOYEE_ID = empls.EMPLOYEE_ID
WHERE
email = empls.EMAIL
GROUP BY empls.EMAIL INTO JOBS_DONE;
RETURN JOBS_DONE;
END $$;

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR')
AS 'Quantidade de empregos no histórico';
