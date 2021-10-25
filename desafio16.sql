DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(Email VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
  SELECT
    COUNT(J.EMPLOYEE_ID)
  FROM hr.job_history AS J
  WHERE J.EMPLOYEE_ID = (
    SELECT
      E.EMPLOYEE_ID
    FROM
      hr.employees AS E
    WHERE E.EMAIL = Email
  )
  INTO result;
  RETURN result;
END $$
DELIMITER ;
