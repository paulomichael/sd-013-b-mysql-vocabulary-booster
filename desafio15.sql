USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN title VARCHAR(100))
BEGIN
    SELECT ROUND(AVG(SALARY), 2) AS `Média salarial`
    FROM employees e
    INNER JOIN jobs j ON j.JOB_ID = e.JOB_ID
    WHERE j.JOB_TITLE = title
    GROUP BY e.JOB_ID;
END $$
DELIMITER ;
