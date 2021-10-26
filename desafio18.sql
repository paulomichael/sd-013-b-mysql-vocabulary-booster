SELECT    
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,  
  DATE_FORMAT(JH.START_DATE, '%d/%m/%Y') AS `Data de início`,   
  DATE_FORMAT(JH.END_DATE, '%d/%m/%Y') AS `Data de rescisão`,   
  ROUND(DATEDIFF(JH.END_DATE, JH.START_DATE) / 365, 2) AS `Anos trabalhados` 
  FROM   
    hr.employees AS E   
    INNER JOIN hr.job_history AS JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID 
ORDER BY  
  `Nome completo` ASC,   
  `Anos trabalhados` ASC;

  -- ref para pegar o '0' dos meses: https://stackoverflow.com/questions/7043794/get-mysql-month-to-use-leading-zeros
