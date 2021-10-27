DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes TINYINT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT 
    COUNT(*)
FROM
    hr.employees
WHERE
    MONTH(HIRE_DATE) = mes
        AND YEAR(HIRE_DATE) = ano INTO quantidade;
RETURN quantidate;
END $$

DELIMITER ;
