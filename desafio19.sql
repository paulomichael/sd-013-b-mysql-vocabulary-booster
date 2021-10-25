USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(Mês INT, Ano INT) 
RETURNS INT READS SQL DATA
BEGIN
  RETURN (SELECT
    COUNT(E.EMPLOYEE_ID)
  FROM
    employees AS E
  WHERE MONTH(E.HIRE_DATE) = Mês
  AND YEAR(E.HIRE_DATE) = Ano);
END $$

DELIMITER ;
