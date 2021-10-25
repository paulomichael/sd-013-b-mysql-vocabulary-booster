SELECT 
  UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome completo`,
  JH.START_DATE AS `Data de início`,
  E.SALARY AS `Salário`
FROM 
  hr.employees AS E
  INNER JOIN hr.job_history AS JH
  ON MONTH(JH.START_DATE) IN (1, 2, 3) AND E.EMPLOYEE_ID = JH.EMPLOYEE_ID
ORDER BY 
  `Nome completo` ASC,
  `Data de início` ASC;
  