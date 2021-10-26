DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT 
ROUND(AVG(`SALARY`) , 2) AS `Média salarial`
FROM hr.employees AS em
JOIN hr.jobs AS jo
ON em.`JOB_ID` = jo.`JOB_ID`
WHERE jo.`JOB_TITLE` = cargo;
END $$
DELIMITER ;
