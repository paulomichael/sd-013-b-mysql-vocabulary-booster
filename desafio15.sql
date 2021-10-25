USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(75))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM hr.employees E
JOIN hr.jobs J ON E.JOB_ID = J.JOB_ID
WHERE J.JOB_TITLE = cargo
GROUP BY E.JOB_ID;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
