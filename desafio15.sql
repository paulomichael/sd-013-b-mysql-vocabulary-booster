DROP PROCEDURE IF EXISTS buscar_media_por_cargo;

DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN Cargo VARCHAR(50))
BEGIN
  SELECT
    ROUND(AVG(E.SALARY), 2) AS `Média salarial`
  FROM
    hr.employees AS E
  WHERE E.JOB_ID = (
    SELECT
      JOB_ID
    FROM
      hr.jobs AS J
    WHERE J.JOB_TITLE = Cargo
  )
  GROUP BY JOB_ID;
END $$
DELIMITER ;

