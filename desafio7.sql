SELECT 
  upper(CONCAT(Emp.FIRST_NAME, ' ', Emp.LAST_NAME)) AS `Nome completo`,
 
 /*http://blog.tiagopassos.com/2010/08/31/converter-de-maiusculas-para-minusculas-e-vice-versa-com-o-mysql/ */ his.START_DATE AS `Data de início`,
  Emp.SALARY AS `Salário`
FROM 
  hr.employees AS Emp
  INNER JOIN hr.job_history AS his
  ON MONTH(his.START_DATE) IN (1, 2, 3) AND Emp.EMPLOYEE_ID = his.EMPLOYEE_ID
ORDER BY 
  `Nome completo` ASC,
  `Data de início` ASC;
