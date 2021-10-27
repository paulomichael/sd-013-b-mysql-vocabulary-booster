USE hr; 
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50)) 
BEGIN 
SELECT ROUND(AVG(t1.SALARY),2) AS  "Média salarial" FROM employees AS t1
INNER JOIN jobs as t2
ON t1.JOB_ID = t2.JOB_ID
WHERE JOB_TITLE = job;
END $$
DELIMITER ;
