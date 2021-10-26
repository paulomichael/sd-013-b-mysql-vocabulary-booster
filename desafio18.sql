SELECT    
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,  
  CONCAT(DAY(JH.START_DATE), '/', DATE_FORMAT(JH.START_DATE, '%m'), '/', YEAR(JH.START_DATE)) AS `Data de início`,   
  CONCAT(DAY(JH.END_DATE), '/',DATE_FORMAT(JH.END_DATE, '%m'), '/', YEAR(JH.END_DATE)) AS `Data de rescisão`,   
  ROUND(DATEDIFF(JH.END_DATE, JH.START_DATE) / 365, 2) AS `Anos trabalhados` 
  FROM   
    hr.employees AS E   
    INNER JOIN hr.job_history AS JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID 
ORDER BY  
  `Nome completo` ASC,   
  `Anos trabalhados` ASC;

  -- ref para pegar o '0' dos meses: https://stackoverflow.com/questions/7043794/get-mysql-month-to-use-leading-zeros
