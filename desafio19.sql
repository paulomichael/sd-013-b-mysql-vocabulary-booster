USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE qntd INT;
SELECT
    COUNT(*)
FROM
    hr.employees AS E
WHERE
    MONTH(E.hire_date) = mes AND YEAR(E.hire_date) = ano
    INTO qntd;
    RETURN qntd;
END $$

DELIMITER ;
