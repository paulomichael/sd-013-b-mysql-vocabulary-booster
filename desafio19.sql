DELIMITER $$;

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano (in_month INT, in_year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE hired_quantity INT;
SELECT 
COUNT(*)
FROM
hr.employees
WHERE
MONTH(HIRE_DATE) = in_month
AND YEAR(HIRE_DATE) = in_year INTO hired_quantity;
RETURN hired_quantity;
END $$;

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
