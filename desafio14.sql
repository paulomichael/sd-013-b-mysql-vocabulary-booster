USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100), OUT mediaSal INT)
BEGIN
SELECT 
AVG(em.`SALARY`)
FROM hr.employees AS em
JOIN hr.jobs AS jo
ON em.`JOB_ID` = jo.`JOB_ID`
WHERE jo.`JOB_TITLE` = cargo INTO mediaSal;
END $$
DELIMITER ;
