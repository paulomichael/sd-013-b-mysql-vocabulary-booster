DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(MES INT, ANO INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE quantidade_contrados INT;
	SELECT 
    COUNT(*)
FROM
    hr.employees
WHERE
    YEAR(HIRE_DATE) = ANO
        AND MONTH(HIRE_DATE) = MES INTO quantidade_contrados;
    RETURN quantidade_contrados;
END $$

DELIMITER ;