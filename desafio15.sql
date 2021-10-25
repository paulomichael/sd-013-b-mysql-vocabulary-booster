use hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN jobName VARCHAR(50))
BEGIN
SELECT ROUND(AVG(empls.SALARY), 2) AS 'Média Salarial' FROM employees empls
INNER JOIN jobs jbs
ON empls.JOB_ID = jbs.JOB_ID
WHERE jobName = JOB_TITLE;
END $$;

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
