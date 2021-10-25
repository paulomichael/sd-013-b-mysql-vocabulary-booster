DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN nomeDocargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(SALARY),2) AS `Média salarial` FROM employees AS e INNER JOIN jobs AS j ON e.JOB_ID = j.JOB_ID WHERE nomeDoCargo = j.JOB_TITLE;
END $$
DELIMITER ;
