DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN jobName TEXT)
BEGIN
SELECT ROUND(AVG(empls.SALARY), 2) AS 'Média salarial' FROM hr.employees empls
INNER JOIN hr.jobs jbs
ON empls.JOB_ID = jbs.JOB_ID
WHERE jobName = jbs.JOB_TITLE
GROUP BY jbs.JOB_TITLE;
END $$;

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
