USE hr;
DELIMITER $$;
CREATE PROCEDURE buscar_media_por_cargo (IN cargo VARCHAR(30))
BEGIN
SELECT ROUND(AVG(em.SALARY), 2) as "Média salarial" FROM jobs as jo
INNER JOIN employees as em ON jo.JOB_ID = em.JOB_ID
WHERE jo.JOB_TITLE = cargo;
END $$;
DELIMITER ;
