USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_média_por_cargo(IN jobTitle VARCHAR(50))
BEGIN
SELECT 
ROUND(AVG(E.SALARY), 2) AS `Média salarial`
FROM
hr.employees AS E
JOIN hr.jobs AS J
ON J.JOB_ID = E.JOB_ID
WHERE J.JOB_TITLE = jobTitle
GROUP BY E.JOB_ID;
END $$
DELIMITER ;
