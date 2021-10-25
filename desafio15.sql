USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(300))
BEGIN
  SELECT 
    ROUND(AVG(E.SALARY), 2) AS `Média salarial`
  FROM 
    hr.employees AS E
    INNER JOIN hr.jobs AS J ON J.JOB_ID = E.JOB_ID AND J.JOB_TITLE = cargo;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
