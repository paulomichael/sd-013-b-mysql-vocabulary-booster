


DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN 
  SELECT ROUND(AVG(SALARY), 2) AS `Média salarial`
  FROM hr.employees AS s
  INNER JOIN 
  hr.jobs AS j WHERE j.JOB_ID = s.JOB_ID
  AND JOB_TITLE = cargo;
END $$;

DELIMITER ;
