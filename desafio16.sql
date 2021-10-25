USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(300))
RETURNS INT READS SQL DATA
BEGIN 
  DECLARE totalDeCargos INT;
  SELECT
    COUNT(JH.JOB_ID)
  FROM
    job_history AS JH
    INNER JOIN employees AS E ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID AND E.EMAIL = email
  INTO totalDeCargos;
  RETURN totalDeCargos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
