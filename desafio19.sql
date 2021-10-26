USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
  BEGIN
    DECLARE totalFuncionarios INT;
    
    SELECT 
      COUNT(EMPLOYEE_ID) AS `Total contratados`
    FROM
      employees
    WHERE
      MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano
    INTO totalFuncionarios;
    RETURN totalFuncionarios;
  END $$
  DELIMITER $$
  
  SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
